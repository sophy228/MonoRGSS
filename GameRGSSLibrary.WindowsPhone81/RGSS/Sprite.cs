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
        private bool _internalUsage;
        public Sprite()
        {
            Inialize();
            id = SpriteFactory.AllocateId();
        }
        public Sprite(Viewport viewport, bool internalusage=false):this()
        {
            _viewport = viewport;
            _internalUsage = internalusage;
            if (!_internalUsage)
            {
                if (viewport == null)
                {
                    var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                    viewport = context.ViewPortHeaer;
                }
                this.InsertInZorder(viewport.SpriteHeader);
            }
        }

        private void Inialize()
        {
            //src rect
            m_pxSrcWidth = 0;
            m_pxSrcHeight = 0;
            m_pxLocX = m_pxLocY = 0;
            mSrcRect = new Rect(m_pxLocX, m_pxLocY, m_pxSrcHeight, m_pxSrcWidth);
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
                LinkNode.ListDel(this);
                z = value;
                InsertInZorder(_viewport.SpriteHeader);
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



        public void Draw(DrawManager dm, int frameCount)
        {
            
            Debug.WriteLine(string.Format("Sprinte#{0}- Z:({1}), draw@frameCount:{2}",
                             id, Z, frameCount));
            if (!Visible || m_Bitmap == null)
                return;
            Rectangle rSource;
            rSource = new Rectangle(mSrcRect.X, mSrcRect.Y, mSrcRect.Width, mSrcRect.Height);
            Vector2 vDest = new Vector2(m_pxDstX, m_pxDstY);
            Vector2 vOrigin = new Vector2(m_pxOriginX, m_pxOriginY);
            Vector2 vScale = new Vector2(m_zoomX, m_zoomY);
            dm.SpriteBatch.Draw(m_Bitmap.Texture, vDest, rSource, m_cTint.toXnaColor(), m_fpRotation, vOrigin, vScale, SpriteEffects.None, m_fpDepth);
        }

        public virtual void Update()
        {

        }

        public void Dispose()
        {
            if (!_internalUsage)
            {
                LinkNode.ListDel(this);
                //todo what about bitmap？
            }
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

        public static int AllocateId()
        {
            return id++;
        }
    }
}
