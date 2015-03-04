using System.Runtime.InteropServices;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;
namespace RGSS.Libraries.Builtins
{
    [RubyClass("Color", Inherits = typeof(object), Extends = typeof(Color))]
    public static class RubyColorOps
    {
        [RubyConstructor]
        public static Color Create(RubyClass self, int r, int g, int b, [Optional]int alpha)
        {
            Color color = new Color(r,g,b,alpha);
            return color;
        }
        [RubyConstructor]
        public static Color Create(RubyClass self)
        {
            Color color = new Color();
            return color;
        }
        [RubyMethod("red")]
        public static int GetRed(Color self)
        {
            return self.Red;
        }
        [RubyMethod("red=")]
        public static void SetRed(Color self, int red)
        {
            self.Red = red;
        }
        [RubyMethod("green")]
        public static int GetGreen(Color self)
        {
            return self.Green;
        }
        [RubyMethod("green=")]
        public static void SetGreen(Color self, int green)
        {
            self.Green = green;
        }
        [RubyMethod("blue")]
        public static int GetBlue(Color self)
        {
            return self.Blue;
        }
        [RubyMethod("blue=")]
        public static void SetBlue(Color self, int blue)
        {
            self.Blue = blue;
        }
        [RubyMethod("alpha")]
        public static int GetAlpha(Color self)
        {
            return self.Alpha;
        }
        [RubyMethod("alpha=")]
        public static void SetAlpha(Color self, int alpha)
        {
            self.Alpha = alpha;
        }
        [RubyMethod("set")]
        public static void Set(Color self, int r, int g, int b, [Optional]int alpha)
        {
            self.SetColor(r, g, b, alpha);
        }
        [RubyMethod("set")]
        public static void Set(Color self, Color c)
        {
            self.SetColor(c);
        }

    }
}
