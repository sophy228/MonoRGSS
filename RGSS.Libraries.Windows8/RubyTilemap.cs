using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Tilemap", Inherits = typeof(object), Extends = typeof(Tilemap))]
    public static class TilemapOps
    {
        [RubyConstructor]
        public static Tilemap CreateTilemap(RubyClass self, [Optional]Viewport viewport)
        {
            return new Tilemap(viewport);
        }

        [RubyMethod("dispose")]
        public static void Dispose(Tilemap self)
        {
            self.Dispose();
        }

        [RubyMethod("update")]
        public static void Update(Tilemap self)
        {
            self.Update();
        }

        [RubyMethod("bitmaps")]
        public static Bitmap[] GetBitmaps(Tilemap self)
        {
            return self.Bitmaps;
        }

        [RubyMethod("map_data")]
        public static Table GetMapdata(Tilemap self)
        {
            return self.MapData;
        }
        [RubyMethod("map_data=")]
        public static void SetMapdata(Tilemap self, Table mapdata)
        {
            self.MapData = mapdata;
        }

        [RubyMethod("passages ")]
        public static Table GetPassages(Tilemap self)
        {
            return self.Passanges;
        }
        [RubyMethod("passages=")]
        public static void SetPassages(Tilemap self, Table passages)
        {
            self.Passanges = passages;
        }

        [RubyMethod("ox")]
        public static int GetOX(Tilemap self)
        {
            return self.Ox;
        }
        [RubyMethod("ox=")]
        public static int SetOX(Tilemap self, int ox)
        {
            self.Ox = ox;
            return ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(Tilemap self)
        {
            return self.Oy;
        }
        [RubyMethod("oy=")]
        public static int SetOY(Tilemap self, int oy)
        {
            self.Oy = oy;
            return oy;
        }
    }
}
