using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class Rect
    {
        public int X;
        public int Y;
        public int Width;
        public int Height;

        public Rect(int ix, int iy, int iwidth, int iheight)
        {
            Set(ix, iy, iwidth, iheight);
        }

        public void Set(int ix, int iy, int iwidth, int iheight)
        {
            X = ix;
            Y = iy;
            Width = iwidth;
            Height = iheight;
        }
        internal Microsoft.Xna.Framework.Rectangle toXnaRect()
        {
            Microsoft.Xna.Framework.Rectangle rect = new Microsoft.Xna.Framework.Rectangle(X, Y, Width, Height);
            return rect;
        }

        public bool IsEmpty
        {
            get
            {
                return (Width == 0) && (Height == 0);
            }
        }

        public void Empty()
        {
            Width = 0;
            Height = 0;
        }

        public Rect IntersectsWith(Rect rect)
        {
            Microsoft.Xna.Framework.Rectangle rect1 = this.toXnaRect();
            Microsoft.Xna.Framework.Rectangle rect2 = rect.toXnaRect();
            if (rect1.Intersects(rect2))
            {
                int xa1 = rect.X;
                int ya1 = rect.Y;
                int xa2 = rect.X + rect.Width;
                int ya2 = rect.Y + rect.Height;

                int xb1 = this.X;
                int yb1 = this.Y;
                int xb2 = this.X + this.Width;
                int yb2 = this.Y + this.Height;

                int xc1 = Math.Max(xa1, xb1);
                int yc1 = Math.Max(ya1, yb1);
                int xc2 = Math.Min(xa2, xb2);
                int yc2 = Math.Min(ya2, yb2);
                return new Rect(xc1, yc1, xc2 - xc1, yc2 - yc1);
            }
            else
                return null;
        }
    }
}
