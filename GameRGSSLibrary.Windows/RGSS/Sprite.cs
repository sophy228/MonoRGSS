using System;
using System.Diagnostics;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class Sprite : LinkNode, IZorderable
    {
        private int z;
        private Viewport _viewport;

        private int id;
        // sprite source (original) width/height
        protected int m_pxSrcWidth, m_pxSrcHeight;

        // offset to sprite origin (relative to upper-left corner of sprite source rect)
        protected int m_pxOriginX, m_pxOriginY;

        // current sprite location
        protected int m_pxDstX, m_pxDstY;

        // color tint (default = White = no tint)
        protected Color m_cTint = Color.FormXnaColor(Microsoft.Xna.Framework.Color.White);

        /// <summary>
        /// Location of the sprite within the texture
        /// </summary>
        protected int m_pxLocX, m_pxLocY;
        protected float m_fpDepth;
        /// <summary>
        /// Is the sprite currently visible?
        /// </summary>
        protected bool m_fVisible = false;

        protected float m_fpRotation;
        protected float m_zoomX;
        protected float m_zoomY;
        private Bitmap m_Bitmap;

        private Rect mSrcRect;
        private bool _drawBySelf;

        private int opacity;
        private Color blendColor;
        private Texture2D blendTexture;
        private Color lastBlendColor;
        private Rect lastSrcRect;
        private Tone tone;
        private bool disposed;
        private bool mirror;

        private int waveAmp;
        private int waveLength;
        private int waveSpeed;
        private int wavePhase;

        Effect effect = null;
        private void initialSprite()
        {
            Inialize();
            id = SpriteFactory.AllocateId();
            if(id == 1320)
            {

            }
        }
        public Sprite(Viewport viewport = null, bool drawBySelf = false)
        {
            initialSprite();
            _viewport = viewport;
            _drawBySelf = drawBySelf;
            if (!_drawBySelf)
            {
                if (_viewport == null)
                {
                    var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                    _viewport = context.ViewPortHeaer;
                }
                this.InsertInZorder(_viewport.SpriteHeader);
            }
            opacity = 255;
            blendColor = new Color(0, 0, 0, 0);
            lastBlendColor = new Color(0, 0, 0, 0);
            tone = new Tone(255, 255, 255, 0);
            disposed = false;
        }

        private void Inialize()
        {
            //src rect
            m_pxSrcWidth = 0;
            m_pxSrcHeight = 0;
            m_pxLocX = m_pxLocY = 0;
            mSrcRect = new Rect(m_pxLocX, m_pxLocY, m_pxSrcHeight, m_pxSrcWidth);
            lastSrcRect = new Rect(m_pxLocX, m_pxLocY, m_pxSrcHeight, m_pxSrcWidth);
            //dest rect
            m_pxDstX = m_pxDstY = 0;
            //orign
            m_pxOriginX = m_pxOriginX = 0;
            //transaction
            m_zoomX = m_zoomY = 1;
            m_fpRotation = 0;
            m_fpDepth = 0;
        }
        public int Z
        {
            get
            {
                return z;
            }
            set
            {
                z = value;
                if (!_drawBySelf)
                {
                    LinkNode.ListDel(this);
                    InsertInZorder(_viewport.SpriteHeader);
                }
            }
        }

        public Viewport Viewport
        {
            get
            {
                return _viewport;
            }
            set
            {
                _viewport = value;
                if (!_drawBySelf)
                { 
                    LinkNode.ListDel(this);
                    if(_viewport == null)
                    {
                        var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                        _viewport = context.ViewPortHeaer;
                    }
                    this.InsertInZorder(_viewport.SpriteHeader);
                }
            }
        }

        public void InsertInZorder(LinkNode header)
        {
            foreach (Sprite n in header)
            {
                if (this.Z < n.Z)
                {
                    LinkNode.ListAddTail(this, n);
                    return;
                }
            }
            LinkNode.ListAddTail(this, header);
        }

        public Bitmap Bitmap
        {
            get
            {
                return m_Bitmap;
            }
            set
            {
                m_Bitmap = value;
                if (value != null)
                {
                    m_fVisible = true;
                    var rect = m_Bitmap.Texture.Bounds;
                    mSrcRect.Set(rect.X, rect.Y, rect.Width, rect.Height);
                }
            }
        }

        public Rect SrcRect
        {
            get
            {
                return mSrcRect;
            }
            set
            {
                var rect = value;
                mSrcRect.Set(rect.X, rect.Y, rect.Width, rect.Height);
            }
        }

        public int Width
        {
            get
            {
                return mSrcRect.Width;
            }
        }

        public int Height
        {
            get
            {
                return mSrcRect.Height;
            }
        }

        public bool Visible
        {
            get
            {
                return m_fVisible;
            }
            set
            {
                m_fVisible = value;
            }
        }

        public bool Mirror
        {
            get
            {
                return mirror;
            }
            set
            {
                mirror = value;
            }
        }

        public int X
        {
            get
            {
                return m_pxDstX;
            }
            set
            {
                m_pxDstX = value;
            }
        }
        public int Y
        {
            get
            {
                return m_pxDstY;
            }
            set
            {
                m_pxDstY = value;
            }
        }
        public int OX
        {
            get
            {
                return m_pxOriginX;
            }
            set
            {
                m_pxOriginX = value;
            }
        }
        public int OY
        {
            get
            {
                return m_pxOriginY;
            }
            set
            {
                m_pxOriginY = value;
            }
        }

        public float ZoomX
        {
            get
            {
                return m_zoomX;
            }
            set
            {
                m_zoomX = value;
            }
        }

        public float ZoomY
        {
            get
            {
                return m_zoomY;
            }
            set
            {
                m_zoomY = value;
            }
        }

        public int Angle
        {
            get
            {
                return  (int)(m_fpRotation / MathHelper.Pi) * 180;
            }
            set
            {
                m_fpRotation = (value / 180f) * MathHelper.Pi;
            }
        }

        public Color Color
        {
            get
            {
                return blendColor;
            }
            set
            {
                blendColor = value;
            }
        }

        public Tone Tone
        {
            get
            {
                return tone;
            }
            set
            {
                tone = value;
            }
        }

        public int Opacity
        {
            get
            {
                return opacity;
            }
            set
            {
                opacity = value;
            }
        }

        public int WaveAmp
        {
            get
            {
                return waveAmp;
            }
            set
            {
                waveAmp = value;
            }
        }

        public int WaveLength
        {
            get
            {
                return waveLength;
            }
            set
            {
                waveLength = value;
            }
        }

        public int WaveSpeed
        {
            get
            {
                return waveSpeed;
            }
            set
            {
                waveSpeed = value;
            }
        }

        public int WavePhase
        {
            get
            {
                return wavePhase;
            }
            set
            {
                wavePhase = value;
            }
        }

        public void Draw(DrawManager dm, int frameCount)
        {
            
      //      Debug.WriteLine(string.Format("Sprinte#{0}- Z:({1}), draw@frameCount:{2}",
     //                        id, Z, frameCount));
            if (!Visible || m_Bitmap == null)
                return;
            Rectangle rSource;
            rSource = new Rectangle(mSrcRect.X, mSrcRect.Y, mSrcRect.Width, mSrcRect.Height);
            Vector2 vDest = new Vector2(m_pxDstX, m_pxDstY);
            Vector2 vOrigin = new Vector2(m_pxOriginX, m_pxOriginY);
            Vector2 vScale = new Vector2(m_zoomX, m_zoomY);

            Color actualTint = new Color((int)(m_cTint.Red * (opacity / 255.0)),
                                          (int)(m_cTint.Green * (opacity / 255.0)),
                                          (int)(m_cTint.Blue * (opacity / 255.0)),
                                          opacity);
            if (effect != null)
            {
                dm.SpriteBatch.End();
                
                dm.SpriteBatch.Begin(SpriteSortMode.Immediate, BlendState.AlphaBlend,
        SamplerState.LinearClamp, DepthStencilState.Default,
        RasterizerState.CullNone, effect);
            }
            SpriteEffects speffect = SpriteEffects.None;
            if (mirror)
                speffect = SpriteEffects.FlipHorizontally;
            dm.SpriteBatch.Draw(m_Bitmap.Texture, vDest, rSource, actualTint.toXnaColor(), m_fpRotation, vOrigin, vScale, speffect, m_fpDepth);
                if (effect != null)
                {
                    dm.SpriteBatch.End();

                    dm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
                }
            
            if (blendColor.Alpha != 0)
            {
                

                Color actualblend = new Color((int)(blendColor.Red * (blendColor.Alpha / 255.0)),
                                          (int)(blendColor.Green * (blendColor.Alpha / 255.0)),
                                          (int)(blendColor.Blue * (blendColor.Alpha / 255.0)),
                                          blendColor.Alpha);

                if (!lastBlendColor.isSame(blendColor) || lastSrcRect.Width != mSrcRect.Width || lastSrcRect.Height != mSrcRect.Height)
                {
                    if (blendTexture != null)
                        blendTexture.Dispose();
                    var drm = RGSSEngine.GetDrawManager();
                    blendTexture = new Texture2D(drm.GraphicsDevice, rSource.Width, rSource.Height);
                    int size = rSource.Width * rSource.Height;
                    Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
                    for (int i = 0; i < size; i++)
                        data[i] = actualblend.toXnaColor();
                    blendTexture.SetData(data);
                }
                if (blendTexture != null)
                    dm.SpriteBatch.Draw(blendTexture, vDest, rSource, Microsoft.Xna.Framework.Color.White, m_fpRotation, vOrigin, vScale, SpriteEffects.None, m_fpDepth);
            }

            lastBlendColor.SetColor(blendColor.Red, blendColor.Green, blendColor.Blue, blendColor.Alpha);
            lastSrcRect.Set(mSrcRect.X, mSrcRect.Y, mSrcRect.Width, mSrcRect.Height);
        }

        public virtual void Update()
        {
            var dm = RGSSEngine.GetGame().DrawManager;
            
            if (waveAmp != 0)
            {
                effect = dm.Content.Load<Effect>("Effect\\WaveEffect");
                effect.Parameters["amp"].SetValue((float)waveAmp / (float)dm.CurrentDrawContext.DefaultWindowRect.Width);
                effect.Parameters["length"].SetValue((float)waveLength / (float)dm.CurrentDrawContext.DefaultWindowRect.Width);
                effect.Parameters["speed"].SetValue((float)waveSpeed / (float)dm.CurrentDrawContext.DefaultWindowRect.Width);
                effect.Parameters["phase"].SetValue((float)wavePhase / (float)dm.CurrentDrawContext.DefaultWindowRect.Width);
                effect.Parameters["fTimer"].SetValue((float)RGSSEngine.GetGame().GameControler.FrameCount / (float)RGSSEngine.GetGame().GameControler.FrameRate);
                //Bitmap.ApplyEffect(effect);
            }
            else
            {
                effect = null;
            }
        }

        public void Dispose()
        {
            if (disposed)
                return;
            if (!_drawBySelf)
            {

              LinkNode.ListDel(this);
                //todo what about bitmap？
            }
            disposed = true;
        }

    }

    public class SpriteFactory
    {
        private static int id;
        public static Sprite Create(Viewport vp)
        {
            if (vp == null)
            {
                var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                vp = context.ViewPortHeaer;
            }
            Sprite sp = new Sprite(vp);
            //sp.InsertInZorder(vp.SpriteHeader);
            return sp;
        }

        public static Plane CreatePlane(Viewport vp)
        {
            if (vp == null)
            {
                var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                vp = context.ViewPortHeaer;
            }
            Plane plane = new Plane(vp);
            //sp.InsertInZorder(vp.SpriteHeader);
            return plane;
        }

        public static int AllocateId()
        {
            
            return id++;
        }
    }
}
