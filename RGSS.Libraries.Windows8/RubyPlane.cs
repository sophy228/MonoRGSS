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
        public static int getWidth(Plane self)
        {
            return self.Width;
        }
        [RubyMethod("height")]
        public static int getHeight(Plane self)
        {
            return self.Height;
        }
        [RubyMethod("z")]
        public static int GetZ(Plane self)
        {
            return self.Z;
        }
        [RubyMethod("z=")]
        public static int SetZ(Plane self, int z)
        {
            self.Z = z;
            return z;
        }
        [RubyMethod("bitmap")]
        public static Bitmap GetBitmap(Plane self)
        {
            return self.Bitmap;
        }
        [RubyMethod("bitmap=")]
        public static int SetBitmap(Plane self, Bitmap bitmap)
        {
            self.Bitmap = bitmap;
            return 0;
        }
        [RubyMethod("src_rect")]
        public static Rect GetSrcRect(Plane self)
        {
            return self.SrcRect;
        }
        [RubyMethod("src_rect=")]
        public static int SetSrcRect(Plane self, Rect rect)
        {
            self.SrcRect = rect;
            return 0;
        }
        [RubyMethod("visible")]
        public static bool GetVisible(Plane self)
        {
            return self.Visible;
        }
        [RubyMethod("visible=")]
        public static int SetVisible(Plane self, bool visible)
        {
            self.Visible = visible;
            return 0;
        }
        [RubyMethod("x")]
        public static int GetX(Plane self)
        {
            return self.X;
        }
        [RubyMethod("x=")]
        public static int SetX(Plane self, int x)
        {
            self.X = x;
            return x;
        }
        [RubyMethod("y")]
        public static int GetY(Plane self)
        {
            return self.Y;
        }
        [RubyMethod("y=")]
        public static int SetY(Plane self, int y)
        {
            self.Y = y;
            return y;
        }
        [RubyMethod("ox")]
        public static int GetOX(Plane self)
        {
            return self.OX;
        }
        [RubyMethod("ox=")]
        public static int SetOX(Plane self, int ox)
        {
            self.OX = ox;
            return ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(Plane self)
        {
            return self.OY;
        }
        [RubyMethod("oy=")]
        public static int SetOY(Plane self, int oy)
        {
            self.OY = oy;
            return oy;
        }
        [RubyMethod("angle")]
        public static int GetAngle(Plane self)
        {
            return self.Angle;
        }
        [RubyMethod("angle=")]
        public static int SetAngle(Plane self, int angle)
        {
            self.Angle = angle;
            return angle;
        }
        [RubyMethod("dispose")]
        public static void Dispose(Plane self)
        {
            self.Dispose();
        }
        [RubyMethod("zoom_x")]
        public static float GetZoomX(Plane self)
        {
            return self.ZoomX;
        }
        [RubyMethod("zoom_x=")]
        public static void SetZoomX(Plane self, float zoomx)
        {
            self.ZoomX = zoomx;
        }
        [RubyMethod("zoom_y")]
        public static float GetZoomY(Plane self)
        {
            return self.ZoomY;
        }
        [RubyMethod("zoom_y=")]
        public static void SetZoomY(Plane self, float zoomy)
        {
            self.ZoomY = zoomy;
        }

        [RubyMethod("tone")]
        public static Tone GetTone(Plane self)
        {
            return null;
        }

        [RubyMethod("tone=")]
        public static void SetTone(Plane self, Tone tone)
        {

        }
    }
}
