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
            foreach (Window wd in WindowHeader)
            {
               wd.PreBlend(dm, frameCount);
            }
        }
        public void Draw(DrawManager dm, int frameCount)
        {
#if DEBUGOUT
            if(_rect != null )
                Debug.WriteLine(string.Format("ViewPort#{0}({1},{2},{3},{4})- Z:({5}), draw@frameCount:{6}",
                             id, _rect.X, _rect.Y, _rect.Width, _rect.Height, Z, frameCount));
            else
                Debug.WriteLine(string.Format("ViewPort#{0}- Z:({1}), draw@frameCount:{2}",
                             id, Z, frameCount));
#endif
            if (!Visible)
                return;
            Matrix origenoffset = Matrix.CreateTranslation(-Ox, -Oy, 0);
            Matrix scaleTranslation = Matrix.CreateScale((float)(dm.DefaultViewport.Width / 544.0f), (float)(dm.DefaultViewport.Height / 416.0f), 1.0f);
            dm.SpriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.LinearClamp,
                DepthStencilState.Default,
                RasterizerState.CullNone,
                null,
                origenoffset);
            var viewport = dm.DefaultViewport;

            viewport.X = this._rect.X;
            viewport.Y = this._rect.Y ;
            viewport.Width = this._rect.Width ;
            viewport.Height = this._rect.Height;
            dm.GraphicsDevice.Viewport = viewport;
            foreach(Sprite sp in SpriteHeader)
            {
                sp.Draw(dm, frameCount);
            }

            foreach(Window wd in WindowHeader)
            {
                wd.Draw(dm, frameCount);
            }
            dm.SpriteBatch.End();
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
