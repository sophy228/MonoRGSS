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
    }
}
