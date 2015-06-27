using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;

namespace GameLibrary.RGSS
{
    public class Tilemap
    {
        private Bitmap[] bitmaps;
        private Table map_data;
        private Table passages;

        private bool visible;
        private int ox;
        private int oy;

        private Viewport _viewport;

        private TileManager tileManager;

        public Tilemap(Viewport viewport = null)
        {
            bitmaps = new Bitmap[9];
            
            if (_viewport == null)
            {
                var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                _viewport = context.ViewPortHeaer;
            }
        }

        public Bitmap[] Bitmaps
        {
            get
            {
                return bitmaps;
            }
        }

        public Table MapData
        {
            get
            {
                return map_data;
            }
            set
            {
                map_data = value;
            }
        }

        public Table Passanges
        {
            get
            {
                return passages;
            }
            set
            {
                passages = value;
            }
        }

        public Viewport Viewport
        {
            get
            {
                return _viewport;
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

        static int framecount;
        public void Update()
        {
          tileManager = TileManager.CreateInstance(this);
          tileManager.UpdataMapSprites(framecount++);
        }

        public void Dispose()
        {
            TileManager.DestroyInstance();
        }
    }
}
