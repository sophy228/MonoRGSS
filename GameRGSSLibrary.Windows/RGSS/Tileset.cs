using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
   public enum TileAnimateClass
    {
        STATIC,
        ANIMATE
    }

   public  class TilesetAnimateStyle
    {
        protected  Rect[] animateRects;
        public int FrameNumber
        {
            get
            {
                return animateRects.Length;
            }
        }

        public TileAnimateClass AnimateClass
        {
            get
            {
                if(FrameNumber > 1)
                    return TileAnimateClass.ANIMATE;
                else
                    return TileAnimateClass.STATIC;
            }
        }

        public Rect GetCurrentRect(int frame)
        {
            return animateRects[frame%FrameNumber];
        }

        public TilesetAnimateStyle()
        {

        }

        public TilesetAnimateStyle(Rect rect)
        {
            animateRects = new Rect[] { rect };
        }

        public static TilesetAnimateStyle TilesetAnimateStyle1 = new TilesetAnimateStyle1();
        public static TilesetAnimateStyle TilesetAnimateStyle2 = new TilesetAnimateStyle2();
        public static TilesetAnimateStyle TilesetAnimateStyleStatic = new TilesetAnimateStyle(new Rect(0, 0, 0, 0));
    }

    class TilesetAnimateStyle1:TilesetAnimateStyle
    {
        public TilesetAnimateStyle1()
        {
            animateRects = new Rect[]{ new Rect(0,0,64,96), new Rect(64,0,64,96),new Rect(128,0,64,96)};
        }
        
    }
    class TilesetAnimateStyle2:TilesetAnimateStyle
    {
        public TilesetAnimateStyle2()
        {
            animateRects = new Rect[]{ new Rect(0,0,64,32), new Rect(0,32,64,32),new Rect(0,64,64,32)};
        } 
    }

    class TileDataIDRange
    {
        public int Min;
        public int Max;

        public bool InRange(int value)
        {
            return (value >= Min && value <= Max);
        }
        public TileDataIDRange(int min, int max)
        {
            Min = min;
            Max = max;
        }
        public TileDataIDRange (int tileID)
        {
            Min = tileID * 48 + 2048;
            Max = Min + 47;
        }
        public static int GetTileSetID(int tileDataID)
        {
            if (tileDataID >= 2048)
                return (tileDataID - ((tileDataID - 2048) % 48) - 2048) / 48;
            else
                return -1;
        }
    }
    internal class Tileset
    {
        private TilePic tilePic;
        private int tileID;
        private TilesetAnimateStyle animateStyle;
        private TileStyle tileStyle;
        private TileDataIDRange range;
        private Rect areaInPic;

        public Tileset(TilePic tilepic, int id, TileStyle tStyle, TilesetAnimateStyle aStyle, Rect area)
        {
            tilePic = tilepic;
            tileID = id;
            animateStyle = aStyle;
            tileStyle = tStyle;
            range = new TileDataIDRange(id);
            areaInPic = area;
        }

        public Tileset(TilePic tilepic, int id, TileStyle tStyle, TilesetAnimateStyle aStyle)
        {
            tilePic = tilepic;
            tileID = id;
            animateStyle = aStyle;
            tileStyle = tStyle;
            range = new TileDataIDRange(id);
            areaInPic = new Rect(0,0,tilepic.Width,tilepic.Height);
        }

        public TilePic TilePic
        {
            get
            {
                return tilePic;
            }
        }

        public TileDataIDRange DataIDRange
        {
            get
            {
                return range;
            }
        }

        public TilesetAnimateStyle AnimateStyle
        {
            get
            {
                return animateStyle;
            }
        }

        public TileStyle TileStyle
        {
            get
            {
                return tileStyle;
            }
        }

        public Rect AreaInTilePic
        {
            get
            {
                return areaInPic;
            }
        }
    }

}
