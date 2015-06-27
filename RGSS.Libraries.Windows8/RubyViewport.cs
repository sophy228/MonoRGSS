using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Viewport", Inherits = typeof(object), Extends = typeof(Viewport))]
    public static class RubyViewportOps
    {
        [RubyConstructor]
        public static Viewport CreateViewPort(RubyClass/*!*/ self, int x, int y, int width, int height)
        {
            Viewport vp = ViewportFactory.Create(x, y, width, height);
            return vp;
        }
        [RubyConstructor]
        public static Viewport CreateViewPort(RubyClass/*!*/ self, Rect rect)
        {
            Viewport vp = ViewportFactory.Create(rect);
            return vp;
        }
        [RubyMethod("z")]
        public static int GetZ(Viewport self)
        {
            return self.Z;
        }
        [RubyMethod("z=")]
        public static int SetZ(Viewport self, int z)
        {
            self.Z = z;
            return z;
        }
        [RubyMethod("dispose")]
        public static void Dispose(Viewport self)
        {
            self.Dispose();
        }

        [RubyMethod("color")]
        [RubyMethod("tone")]
        public static Tone GetTone(Viewport self)
        {
            return null;
        }

        [RubyMethod("color=")]
        [RubyMethod("tone=")]
        public static void SetTone(Viewport self, object tone)
        {

        }

        [RubyMethod("ox")]
        public static int GetOX(Viewport self)
        {
            return 0;
        }
        [RubyMethod("ox=")]
        public static void SetOX(Viewport self, int ox)
        {

        }
        [RubyMethod("oy")]
        public static int GetOY(Viewport self)
        {
            return 0;
        }
        [RubyMethod("oy=")]
        public static void SetOY(Viewport self, int oy)
        {

        }

        [RubyMethod("update")]
        public static void Update(Viewport self)
        {
            
        }
    }
}
