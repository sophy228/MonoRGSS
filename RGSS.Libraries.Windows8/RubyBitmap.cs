using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;
using IronRuby.Runtime.Calls;
using Microsoft.Scripting.Runtime;

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
        [RubyMethod("gradient_fill_rect")]
        public static void GradientFillRect(Bitmap self, int x, int y, int width, int height, Color color1, Color color2, [Optional, DefaultParameterValue(false)]bool vertical)
        {
            self.GradientFillRect(x, y, width, height, color1, color2, vertical);
        }

        [RubyMethod("gradient_fill_rect")]
        public static void GradientFillRect(Bitmap self, Rect rect, Color color1, Color color2, [Optional, DefaultParameterValue(false)]bool vertical)
        {
            self.GradientFillRect(rect.X,rect.Y,rect.Width,rect.Height, color1, color2, vertical);
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
        public static void DrawText(RubyContext context, Bitmap self, int x, int y, int width, int height, object/*!*/text, [Optional]int aligen)
        {
            string txt = "";
            if (text is MutableString)
            {
                txt = context.DecodePath((MutableString)text);
                MutableString ms = (MutableString)text;
                var bbs = ms.ToByteArray();
            }
            else
                txt = text.ToString();
            self.DrawText(x, y, width, height, txt, aligen);
        }

        //[RubyMethod("draw_text")]
        //public static void DrawText(RubyContext context, Bitmap self, Rect rect, MutableString/*!*/text, [Optional]int aligen)
        //{
        //    var txt = context.DecodePath(text);
        //    self.DrawText(rect.X, rect.Y, rect.Width, rect.Height, txt, aligen);
        //}

        [RubyMethod("draw_text")]
        public static void DrawText(RubyContext context, Bitmap self, Rect rect, object/*!*/text, [Optional]int aligen)
        {
            string txt="";
            if(text is MutableString)
                txt = context.DecodePath((MutableString)text);
            else
                txt = text.ToString();
            self.DrawText(rect.X, rect.Y, rect.Width, rect.Height, txt, aligen);
        }

        [RubyMethod("text_size")]
        public static Rect TextSize(RubyContext context, Bitmap self, object/*!*/text)
        {
            string txt = "";
            if (text is MutableString)
                txt = context.DecodePath((MutableString)text);
            else
                txt = text.ToString();
            return self.TextSize(txt);
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

        [RubyMethod("font")]
        public static Font GetFont(Bitmap self)
        {
            return self.Font;
        }

        [RubyMethod("font=")]
        public static void SetFont(Bitmap self, Font value)
        {
            self.Font = value;
        }
        
        [RubyMethod("blur")]
        public static void Blur(Bitmap self)
        {
            self.Blur();
        }

        [RubyMethod("radial_blur")]
        public static void RadialBlur(Bitmap self, int angle, int division)
        {
            self.RadialBlur(angle, division);
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

        [RubyMethod("allocate",RubyMethodAttributes.PublicSingleton)]
        public static object Allocate(RubyClass/*!*/ self)
        {
            //return self;
            return new Bitmap();
        }

        [RubyMethod("initialize_copy", RubyMethodAttributes.PrivateInstance)]
        public static Bitmap/*!*/ InitializeCopy(Bitmap/*!*/ self, [NotNull]Bitmap/*!*/ other)
        {
            self.CopyFrom(other);
            return self;
        }
        public static void InstanceAllocator(MetaObjectBuilder metaBuilder, CallArguments args, string name)
        {

        }
    }
}
