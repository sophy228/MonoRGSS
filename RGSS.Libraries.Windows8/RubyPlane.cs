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
    [RubyClass("Plane", Inherits = typeof(object), Extends=typeof(Plane))]
    public class RubyPlaneOps
    {
        [RubyConstructor]
        public static Plane CreateSprite(RubyClass self, [Optional]Viewport viewport)
        {
            Plane sp = SpriteFactory.CreatePlane(viewport);
            return sp;
        }
        [RubyMethod("width")]
        public static int getWidth(Sprite self)
        {
            return self.Width;
        }
        [RubyMethod("height")]
        public static int getHeight(Sprite self)
        {
            return self.Height;
        }
        [RubyMethod("z")]
        public static int GetZ(Sprite self)
        {
            return self.Z;
        }
        [RubyMethod("z=")]
        public static int SetZ(Sprite self, int z)
        {
            self.Z = z;
            return z;
        }
        [RubyMethod("bitmap")]
        public static Bitmap GetBitmap(Sprite self)
        {
            return self.Bitmap;
        }
        [RubyMethod("bitmap=")]
        public static int SetBitmap(Sprite self, Bitmap bitmap)
        {
            self.Bitmap = bitmap;
            return 0;
        }
        [RubyMethod("src_rect")]
        public static Rect GetSrcRect(Sprite self)
        {
            return self.SrcRect;
        }
        [RubyMethod("src_rect=")]
        public static int SetSrcRect(Sprite self, Rect rect)
        {
            self.SrcRect = rect;
            return 0;
        }
        [RubyMethod("visible")]
        public static bool GetVisible(Sprite self)
        {
            return self.Visible;
        }
        [RubyMethod("visible=")]
        public static int SetVisible(Sprite self, bool visible)
        {
            self.Visible = visible;
            return 0;
        }
        [RubyMethod("x")]
        public static int GetX(Sprite self)
        {
            return self.X;
        }
        [RubyMethod("x=")]
        public static int SetX(Sprite self, int x)
        {
            self.X = x;
            return x;
        }
        [RubyMethod("y")]
        public static int GetY(Sprite self)
        {
            return self.Y;
        }
        [RubyMethod("y=")]
        public static int SetY(Sprite self, int y)
        {
            self.Y = y;
            return y;
        }
        [RubyMethod("ox")]
        public static int GetOX(Sprite self)
        {
            return self.OX;
        }
        [RubyMethod("ox=")]
        public static int SetOX(Sprite self, int ox)
        {
            self.OX = ox;
            return ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(Sprite self)
        {
            return self.OY;
        }
        [RubyMethod("oy=")]
        public static int SetOY(Sprite self, int oy)
        {
            self.OY = oy;
            return oy;
        }
        [RubyMethod("angle")]
        public static int GetAngle(Sprite self)
        {
            return self.Angle;
        }
        [RubyMethod("angle=")]
        public static int SetAngle(Sprite self, int angle)
        {
            self.Angle = angle;
            return angle;
        }
        [RubyMethod("dispose")]
        public static void Dispose(Sprite self)
        {
            self.Dispose();
        }
        [RubyMethod("zoom_x")]
        public static float GetZoomX(Sprite self)
        {
            return self.ZoomX;
        }
        [RubyMethod("zoom_x=")]
        public static void SetZoomX(Sprite self, float zoomx)
        {
            self.ZoomX = zoomx;
        }
        [RubyMethod("zoom_y")]
        public static float GetZoomY(Sprite self)
        {
            return self.ZoomY;
        }
        [RubyMethod("zoom_y=")]
        public static void SetZoomY(Sprite self, float zoomy)
        {
            self.ZoomY = zoomy;
        }

        [RubyMethod("tone")]
        public static Tone GetTone(Sprite self)
        {
            return null;
        }

        [RubyMethod("tone=")]
        public static void SetTone(Sprite self, Tone tone)
        {

        }
    }
}
