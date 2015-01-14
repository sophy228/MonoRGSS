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
    }
}
