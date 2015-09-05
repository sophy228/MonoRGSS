using System.Diagnostics;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class Viewport : LinkNode, IZorderable
    {
        private Rect _rect;
        private int _z;
        private int ox;
        private int oy;
        private DrawContext _drawContext;

        private Sprite _spriteHeader;

        private LinkNode _windowHeader;

        public bool Visible;

        private int id;

        private int flashDuration = 0;
        private Color flashColor;
        private bool flashing;
        private int flashAlphaStep;

        private Tone tone;
        private Color color;

        internal int drawCount = 0;
        internal bool selfManaged;

        private Viewport()
        {

        }
        internal Viewport(DrawContext context, Rect rect)
        {
            _rect = rect;
            _drawContext = context;
            _z = 0;
            id = ViewportFactory.AllocateId();
            _spriteHeader = new Sprite(this,true);
            _windowHeader = new LinkNode();
            Visible = true;
            color = new Color(0, 0, 0, 0);
            tone = new Tone(0, 0, 0, 0);
            //_rect.X *= _drawContext.DrawManager.DefaultViewport.Width / 544;
            //_rect.Width *= _drawContext.DrawManager.DefaultViewport.Width / 544;
            //_rect.Y *= _drawContext.DrawManager.DefaultViewport.Height / 416;
            //_rect.Height *= _drawContext.DrawManager.DefaultViewport.Height / 416;
        }

        internal Viewport(DrawContext context, int x, int y, int width, int height)
            : this(context, new Rect(x, y, width, height))
        {
 
        }

        public Sprite SpriteHeader
        {
            get
            {
                return _spriteHeader;
            }
        }

        public LinkNode WindowHeader
        {
            get
            {
                return _windowHeader;
            }
        }

        public int Ox
        {
            get
            {
                return ox;
            }
            set
            {
                ox = value;
            }
        }

        public int Oy
        {
            get
            {
                return oy;
            }
            set
            {
                oy = value;
            }
        }

        public int Z
        {
            get
            {
                return _z;
            }
            set
            {
                LinkNode.ListDel(this);
                _z = value;
                InsertInZorder(_drawContext.ViewPortHeaer);
            }
        }

        public Color Color
        {
            get
            {
                return color;
            }
            set
            {
                color = value;
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

        public Rect Rect
        {
            get
            {
                return _rect;
            }
        }

        public void InsertInZorder(LinkNode header)
        {
            foreach (Viewport n in header)
            {
                if (this.Z < n.Z)
                {
                    LinkNode.ListAddTail(this, n);
                    return;
                }
            }
            LinkNode.ListAddTail(this, header);
        }
        public void PreBlend(DrawManager dm, int frameCount)
        {
#if DEBUGOUT
            if (_rect != null)
                Debug.WriteLine(string.Format("ViewPort#{0}({1},{2},{3},{4})- Z:({5}), blend@frameCount:{6}",
                             id, _rect.X, _rect.Y, _rect.Width, _rect.Height, Z, frameCount));
            else
                Debug.WriteLine(string.Format("ViewPort#{0}- Z:({1}), blend@frameCount:{2}",
                             id, Z, frameCount));
#endif
     //       foreach (Window wd in WindowHeader)
     //       {
      //         wd.PreBlend(dm, frameCount);
      //      }
     //       foreach (Sprite sp in SpriteHeader)
    //        {
        //        sp.PreBlend();
     //       }
        }

        public virtual void Update()
        {

            if (flashDuration > 0)
            {
                if (flashColor != null)
                {
                    flashColor.Alpha -= flashAlphaStep;
                }
                flashDuration--;
            }
            else if (flashDuration == 0)
            {
                flashing = false;
            }
        }


        public void Flash(Color color, int duration)
        {
            flashColor = color;
            flashDuration = duration;
            flashing = true;
            if (flashColor != null)
                flashAlphaStep = flashColor.Alpha / duration;
        }

        public void Draw(DrawManager dm, int frameCount, float brightness = 255)
        {
#if DEBUGOUT
            if(_rect != null )
                Debug.WriteLine(string.Format("ViewPort#{0}({1},{2},{3},{4})- Z:({5}), draw@frameCount:{6}",
                             id, _rect.X, _rect.Y, _rect.Width, _rect.Height, Z, frameCount));
            else
                Debug.WriteLine(string.Format("ViewPort#{0}- Z:({1}), draw@frameCount:{2}",
                             id, Z, frameCount));
#endif
            drawCount = 0;
            if (!Visible || (flashing && flashColor == null))
                return;


            var viewportEffect = dm.Content.Load<Effect>("Effect\\ViewportEffect");

            viewportEffect.Parameters["tone"].SetValue(new Vector4(Tone.Red / 255.0f, Tone.Green / 255.0f, Tone.Blue / 255.0f, Tone.Gray / 255.0f));
            viewportEffect.Parameters["brightness"].SetValue(brightness / 255.0f);
            Color actualColor;
            if (flashing && flashColor != null)
                actualColor = flashColor;
            else
                actualColor = Color;

            viewportEffect.Parameters["blendcolor"].SetValue(new Vector4(actualColor.Red / 255.0f, actualColor.Green / 255.0f, actualColor.Blue / 255.0f, actualColor.Alpha / 255.0f));

            Matrix origenoffset = Matrix.CreateTranslation(-Ox, -Oy, 0);
          //  Matrix scaleTranslation = Matrix.CreateScale((float)(dm.DefaultViewport.Width / 544.0f), (float)(dm.DefaultViewport.Height / 416.0f), 1.0f);
            Rect rect = this._rect.IntersectsWith(_drawContext.DefaultWindowRect);
            if (rect != null)
            {
                dm.SpriteBatch.Begin(
                    SpriteSortMode.Deferred,
                    BlendState.AlphaBlend,
                    SamplerState.LinearClamp,
                    DepthStencilState.Default,
                    RasterizerState.CullNone,
                    viewportEffect,
                    origenoffset);
                var viewport = dm.DefaultViewport;
                viewport.X = rect.X;
                viewport.Y = rect.Y;
                viewport.Width = rect.Width;
                viewport.Height = rect.Height;
                dm.GraphicsDevice.Viewport = viewport;
                foreach (Sprite sp in SpriteHeader)
                {
                    sp.Draw(dm, frameCount);
                    drawCount++;
                }

                foreach (Window wd in WindowHeader)
                {
                    wd.Draw(dm, frameCount);
                    drawCount++;
                }
                dm.SpriteBatch.End();
            }
            else
            {
                //do-nothing;
            }
        }

        public void Dispose()
        {
            Sprite link;
            for (link = (Sprite)SpriteHeader.Next; link != SpriteHeader;)
            {
                Sprite tmp = (Sprite)link.Next;
                link.Dispose();
                link = tmp;
            }
            LinkNode.ListDel(this);
        }
    }

    public class ViewportFactory
    {
        private static int id;
        public static Viewport Create(int x, int y, int width, int height)
        {
            var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
            Viewport vp = vp = new Viewport(context, x, y, width, height);
            vp.InsertInZorder(context.ViewPortHeaer);
            return vp;
        }

        public static Viewport Create(Rect rect)
        {
            var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
            Viewport vp = vp = new Viewport(context,rect);
            vp.InsertInZorder(context.ViewPortHeaer);
            return vp;
        }

        public static int AllocateId()
        {
            return id++;
        }
    }
}
