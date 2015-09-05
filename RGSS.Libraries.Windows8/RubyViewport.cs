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

        [RubyMethod("tone")]
        public static Tone GetTone(Viewport self)
        {
            return self.Tone;
        }

        [RubyMethod("tone=")]
        public static void SetTone(Viewport self, Tone tone)
        {
            self.Tone = tone;
        }

        [RubyMethod("color")]
        public static Color GetColor(Viewport self)
        {
            return self.Color;
        }

        [RubyMethod("color=")]
        public static void SetColor(Viewport self, Color color)
        {
            self.Color = color;
        }

        [RubyMethod("ox")]
        public static int GetOX(Viewport self)
        {
            return self.Ox;
        }
        [RubyMethod("ox=")]
        public static void SetOX(Viewport self, int ox)
        {
            self.Ox = ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(Viewport self)
        {
            return self.Oy;
        }
        [RubyMethod("oy=")]
        public static void SetOY(Viewport self, int oy)
        {
            self.Oy = oy;
        }

        [RubyMethod("update")]
        public static void Update(Viewport self)
        {
            self.Update();
        }
        [RubyMethod("visible")]
        public static bool GetVisible(Viewport self)
        {
            return self.Visible;
        }
        [RubyMethod("visible=")]
        public static void SetVisible(Viewport self, bool visible)
        {
            self.Visible = visible;
        }

        [RubyMethod("flash")]
        public static void Flash(Viewport self, Color color, int duration)
        {
            self.Flash(color, duration);
        }
    }
}
