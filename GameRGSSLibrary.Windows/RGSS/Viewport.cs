using System.Diagnostics;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;

namespace GameLibrary.RGSS
{
    public class Viewport : LinkNode, IZorderable
    {
        private Rect _rect;
        private int _z;

        private DrawContext _drawContext;

        private Sprite _spriteHeader;

        public bool Visible;

        private int id;

        internal Viewport(DrawContext context, Rect rect)
        {
            _rect = rect;
            _drawContext = context;
            _z = 0;
            _spriteHeader = new Sprite(this);
            id = ViewportFactory.AllocateId();
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
                if (this.Z >= n.Z)
                {
                    LinkNode.ListAddTail(this, n);
                    return;
                }
            }
            LinkNode.ListAddTail(this, header);
        }

        public void Draw(DrawManager dm, int frameCount)
        {
            if(_rect != null )
                Debug.WriteLine(string.Format("ViewPort#{0}({1},{2},{3},{4})- Z:({5}), draw@frameCount:{6}",
                             id, _rect.X, _rect.Y, _rect.Width, _rect.Height, Z, frameCount));
            else
                Debug.WriteLine(string.Format("ViewPort#{0}- Z:({1}), draw@frameCount:{2}",
                             id, Z, frameCount));
            foreach(Sprite sp in SpriteHeader)
            {
                sp.Draw(dm, frameCount);
            }
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

        public static int AllocateId()
        {
            return id++;
        }
    }
}
