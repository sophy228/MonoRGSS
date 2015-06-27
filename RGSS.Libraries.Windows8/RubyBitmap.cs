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
        public static void Blt(Bitmap self, int x, int y, Bitmap src, Rect srcRect, [Optional, DefaultParameterValue(255)]int opacity)
        {
            self.Blt(x, y, src, srcRect, opacity);
        }
        [RubyMethod("stretch_blt")]
        public static void Blt(Bitmap self, Rect desRect, Bitmap src, Rect srcRect, [Optional, DefaultParameterValue(255)]int opacity)
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
        [RubyMethod("clear_rect")]
        public static void Clear(Bitmap self, Rect rect)
        {
            self.Clear(rect);
        }
        [RubyMethod("draw_text")]
        public static void DrawText(RubyContext context, Bitmap self, int x, int y, int width, int height, MutableString/*!*/text, [Optional]int aligen)
        {
            var txt = context.DecodePath(text);
            self.DrawText(x, y, width, height, txt, aligen);
        }

        [RubyMethod("draw_text")]
        public static void DrawText(RubyContext context, Bitmap self, Rect rect, MutableString/*!*/text, [Optional]int aligen)
        {
            var txt = context.DecodePath(text);
            self.DrawText(rect.X, rect.Y, rect.Width, rect.Height, txt, aligen);
        }
        [RubyMethod("clear_rect")]
        public static void Clear(Bitmap self, int x, int y, int width, int height)
        {
            self.Clear(x, y, width,height);
        }
        [RubyMethod("get_pixel")]
        public static Color GetPixel(Bitmap self, int x, int y)
        {
            return self.GetPixel(x,y);
        }
        [RubyMethod("dispose")]
        public static void Dispose(Bitmap self)
        {
            self.Dispose();
        }

        [RubyMethod("disposed?")]
        public static bool IsDisposed(Bitmap self)
        {
            return self.IsDisposed;
        }
    }
}
