using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    internal class TilePic
    {
        private string tilePicName;
        private int width, height;
       // private Texture2D picTexture;
        private Bitmap picBitmap;

        public TilePic(string name, Bitmap bitmap, int w, int h)
        {
            tilePicName = name;
            picBitmap = bitmap;
            width = w;
            height = h;
            var drm = RGSSEngine.GetDrawManager();
          //  picTexture = picBitmap.Texture;
           // picTexture = drm.Content.Load<Texture2D>("System\\" + name);
        }

        public Bitmap Bitmap
        {
            get
            {
                return picBitmap;
            }
        }

        public int Width
        {
            get
            {
                return width;
            }
        }

        public int Height
        {
            get
            {
                return height;
            }
        }

        public string Name
        {
            get
            {
                return tilePicName;
            }
        }
    }
}
