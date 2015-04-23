﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class Cache
    {
        private static Dictionary<String, Bitmap> _bitmapCache = new Dictionary<string, Bitmap>();
        public static Bitmap System(String fileName)
        {
            String path = String.Format("Graphic\\System\\{0}", fileName);
            return GetBitmap(path);
        }
        private static Bitmap Character(String fileName)
        {
            String path = String.Format("Graphic\\Characters\\{0}", fileName);
            return GetBitmap(path);
        }

        private static Bitmap Face(String fileName)
        {
            String path = String.Format("Graphic\\Faces\\{0}", fileName);
            return GetBitmap(path);
        }
        private static Bitmap GetBitmap(String path)
        {
            if (_bitmapCache.ContainsKey(path) && _bitmapCache[path] != null)
            {
                return _bitmapCache[path];
            }
            else
            {
                Bitmap bm = new Bitmap(path);
                _bitmapCache.Add(path, bm);
                return bm;
            }
        }
    }
}
