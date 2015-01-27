using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Rect", Inherits = typeof(object), Extends = typeof(Rect))]
    public static class RubyRectOps
    {
        [RubyConstructor]
        public static Rect Create(RubyClass self, int x, int y, int width, int height)
        {
            Rect rect = new Rect(x, y, width, height);
            return rect;
        }
        [RubyMethod("set")]
        public static int Set(Rect self, int x, int y, int width, int height)
        {
            self.X = x;
            self.Y = y;
            self.Width = width;
            self.Height = height;
            return 0;
        }
        [RubyMethod("x")]
        public static int GetX(Rect self)
        {
            return self.X;
        }
        [RubyMethod("x=")]
        public static int SetX(Rect self, int x)
        {
            self.X = x;
            return x;
        }
        [RubyMethod("y")]
        public static int GetY(Rect self)
        {
            return self.Y;
        }
        [RubyMethod("y=")]
        public static int SetY(Rect self, int y)
        {
            self.Y = y;
            return y;
        }
        [RubyMethod("width")]
        public static int GetWidth(Rect self)
        {
            return self.Width;
        }
        [RubyMethod("width=")]
        public static int SetWidth(Rect self, int width)
        {
            self.Width = width;
            return width;
        }
        [RubyMethod("height")]
        public static int GetHeight(Rect self)
        {
            return self.Height;
        }
        [RubyMethod("height=")]
        public static int SetHeight(Rect self, int height)
        {
            self.Height = height;
            return height;
        }
    }
}
