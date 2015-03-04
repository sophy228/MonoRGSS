using System.Runtime.InteropServices;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Bitmap", Inherits = typeof(object), Extends = typeof(Bitmap))]
    public static class RubyBitmapOps
    {
        [RubyConstructor]
        public static Bitmap Create(RubyClass self, MutableString/*!*/ path)
        {
            var strPath = self.ImmediateClass.Context.DecodePath(path);
            Bitmap BitMap = new Bitmap(strPath);
            return BitMap;
        }

        [RubyConstructor]
        public static Bitmap Create(RubyClass self, int width, int height)
        {
            Bitmap rubyBitMap = new Bitmap(width, height);
            return rubyBitMap;
        }

        [RubyMethod("width")]
        public static int getWidth(Bitmap self)
        {
            return self.Width;
        }

        [RubyMethod("height")]
        public static int getHeight(Bitmap self)
        {
            return self.Height;
        }
        [RubyMethod("rect")]
        public static Rect getRect(Bitmap self)
        {
            return self.Rect;
        }
        [RubyMethod("blt")]
        public static void Blt(Bitmap self, int x, int y, Bitmap src, Rect srcRect,[Optional]int opacity)
        {
            self.Blt(x, y, src, srcRect, opacity);
        }
        [RubyMethod("stretch_blt")]
        public static void Blt(Bitmap self, Rect desRect, Bitmap src, Rect srcRect, [Optional]int opacity)
        {
            self.StretchBlt(desRect, src, srcRect, opacity);
        }
        [RubyMethod("fill_rect")]
        public static void FillRect(Bitmap self, int x, int y, int width, int height, Color color)
        {
            self.FillRect(x, y, width, height, color);
        }
        [RubyMethod("fill_rect")]
        public static void FillRect(Bitmap self, Rect rect, Color color)
        {
            self.FillRect(rect, color);
        }
        [RubyMethod("clear")]
        public static void Clear(Bitmap self)
        {
            self.Clear();
        }
        [RubyMethod("clear")]
        public static void Clear(Bitmap self, Rect rect)
        {
            self.Clear(rect);
        }
        [RubyMethod("clear")]
        public static void Clear(Bitmap self, int x, int y, int width, int height)
        {
            self.Clear(x, y, width,height);
        }
    }
}
