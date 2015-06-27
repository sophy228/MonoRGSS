
using System.Runtime.InteropServices;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;
namespace RGSS.Libraries.Builtins
{
    //[RubyClass("Sprite", Inherits = typeof(object), Extends = typeof(Sprite))]
    //public static class RubySpriteOps
    //{
    //    [RubyConstructor]
    //    public static Sprite CreateSprite(RubyClass self, [Optional]Viewport viewport)
    //    {
    //        Sprite sp = SpriteFactory.Create(viewport);
    //        return sp;
    //    }
    //    [RubyMethod("width")]
    //    public static int getWidth(Sprite self)
    //    {
    //        return self.Width;
    //    }
    //    [RubyMethod("height")]
    //    public static int getHeight(Sprite self)
    //    {
    //        return self.Height;
    //    }
    //    [RubyMethod("z")]
    //    public static int GetZ(Sprite self)
    //    {
    //        return self.Z;
    //    }
    //    [RubyMethod("z=")]
    //    public static int SetZ(Sprite self, int z)
    //    {
    //        self.Z = z;
    //        return z;
    //    }
    //    [RubyMethod("bitmap")]
    //    public static Bitmap GetBitmap(Sprite self)
    //    {
    //        return self.Bitmap;
    //    }
    //    [RubyMethod("bitmap=")]
    //    public static int SetBitmap(Sprite self,Bitmap bitmap)
    //    {
    //        self.Bitmap = bitmap;
    //        return 0;
    //    }
    //    [RubyMethod("src_rect")]
    //    public static Rect GetSrcRect(Sprite self)
    //    {
    //        return self.SrcRect;
    //    }
    //    [RubyMethod("src_rect=")]
    //    public static int SetSrcRect(Sprite self, Rect rect)
    //    {
    //        self.SrcRect = rect;
    //        return 0;
    //    }
    //    [RubyMethod("visible")]
    //    public static bool GetVisible(Sprite self)
    //    {
    //        return self.Visible;
    //    }
    //    [RubyMethod("visible=")]
    //    public static int SetVisible(Sprite self, bool visible)
    //    {
    //        self.Visible = visible;
    //        return 0;
    //    }
    //    [RubyMethod("x")]
    //    public static int GetX(Sprite self)
    //    {
    //        return self.X;
    //    }
    //    [RubyMethod("x=")]
    //    public static int SetX(Sprite self, int x)
    //    {
    //        self.X = x;
    //        return x;
    //    }
    //    [RubyMethod("y")]
    //    public static int GetY(Sprite self,int y)
    //    {
    //        self.Y = y;
    //        return y;
    //    }
    //    [RubyMethod("ox")]
    //    public static int GetOX(Sprite self)
    //    {
    //        return self.OX;
    //    }
    //    [RubyMethod("ox=")]
    //    public static int SetOX(Sprite self, int ox)
    //    {
    //        self.OX = ox;
    //        return ox;
    //    }
    //    [RubyMethod("oy")]
    //    public static int GetOY(Sprite self)
    //    {
    //        return self.OY;
    //    }
    //    [RubyMethod("oy=")]
    //    public static int SetOY(Sprite self,int oy)
    //    {
    //        self.OY = oy;
    //        return oy;
    //    }
    //    [RubyMethod("angle")]
    //    public static int GetAngle(Sprite self)
    //    {
    //        return self.Angle;
    //    }
    //    [RubyMethod("angle=")]
    //    public static int SetAngle(Sprite self, int angle)
    //    {
    //        self.Angle = angle;
    //        return angle;
    //    }
    //    [RubyMethod("dispose")]
    //    public static void Dispose(Sprite self)
    //    {
    //        self.Dispose();
    //    }
    //    [RubyMethod("zoom_x")]
    //    public static float GetZoomX(Sprite self)
    //    {
    //        return self.ZoomX;
    //    }
    //    [RubyMethod("zoom_x=")]
    //    public static void SetZoomX(Sprite self, float zoomx)
    //    {
    //        self.ZoomX = zoomx;
    //    }
    //    [RubyMethod("zoom_y")]
    //    public static float GetZoomY(Sprite self)
    //    {
    //        return self.ZoomY;
    //    }
    //    [RubyMethod("zoom_y=")]
    //    public static void SetZoomY(Sprite self, float zoomy)
    //    {
    //        self.ZoomY = zoomy;
    //    }

    //    [RubyMethod("tone")]
    //    public static Tone GetTone(Sprite self)
    //    {
    //        return null;
    //    }

    //    [RubyMethod("tone=")]
    //    public static void SetTone(Sprite self, Tone tone)
    //    {

    //    }


    //}

    [RubyClass("Sprite", Inherits = typeof(object))]
    public class RubySprite:RubyObject
    {
        private Sprite sp;
        public RubySprite(RubyClass/*!*/ cls, [Optional]Viewport viewport)
            :base(cls)
        {
            sp = SpriteFactory.Create(viewport);
        }

        public RubySprite(RubyClass/*!*/ cls)
            : base(cls)
        {
            sp = SpriteFactory.Create(null);
        }

        [RubyConstructor]
        public static RubySprite CreateSprite(RubyClass self, [Optional]Viewport viewport)
        {
            RubySprite rs = new RubySprite(self, viewport);
            return rs;
        }

        [RubyMethod("initialize", RubyMethodAttributes.PrivateInstance)]
        public static RubySprite Reinitialize(RubySprite self, [Optional]Viewport viewport)
        {
            self.sp.Viewport = viewport;
            return self;
        }

        [RubyMethod("width")]
        public static int getWidth(RubySprite self)
        {
            return self.sp.Width;
        }
        [RubyMethod("height")]
        public static int getHeight(RubySprite self)
        {
            return self.sp.Height;
        }
        [RubyMethod("z")]
        public static int GetZ(RubySprite self)
        {
            return self.sp.Z;
        }
        [RubyMethod("z=")]
        public static int SetZ(RubySprite self, int z)
        {
            self.sp.Z = z;
            return z;
        }
        [RubyMethod("bitmap")]
        public static Bitmap GetBitmap(RubySprite self)
        {
            return self.sp.Bitmap;
        }
        [RubyMethod("bitmap=")]
        public static int SetBitmap(RubySprite self, Bitmap bitmap)
        {
            self.sp.Bitmap = bitmap;
            return 0;
        }
        [RubyMethod("src_rect")]
        public static Rect GetSrcRect(RubySprite self)
        {
            return self.sp.SrcRect;
        }
        [RubyMethod("src_rect=")]
        public static int SetSrcRect(RubySprite self, Rect rect)
        {
            self.sp.SrcRect = rect;
            return 0;
        }
        [RubyMethod("visible")]
        public static bool GetVisible(RubySprite self)
        {
            return self.sp.Visible;
        }
        [RubyMethod("visible=")]
        public static int SetVisible(RubySprite self, bool visible)
        {
            self.sp.Visible = visible;
            return 0;
        }
        [RubyMethod("x")]
        public static int GetX(RubySprite self)
        {
            return self.sp.X;
        }
        [RubyMethod("x=")]
        public static int SetX(RubySprite self, int x)
        {
            self.sp.X = x;
            return x;
        }
        [RubyMethod("y")]
        public static int GetY(RubySprite self)
        {
            return self.sp.Y;
        }
        [RubyMethod("y=")]
        public static int SetY(RubySprite self, int y)
        {
            self.sp.Y = y;
            return y;
        }
        [RubyMethod("ox")]
        public static int GetOX(RubySprite self)
        {
            return self.sp.OX;
        }
        [RubyMethod("ox=")]
        public static int SetOX(RubySprite self, int ox)
        {
            self.sp.OX = ox;
            return ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(RubySprite self)
        {
            return self.sp.OY;
        }
        [RubyMethod("oy=")]
        public static int SetOY(RubySprite self, int oy)
        {
            self.sp.OY = oy;
            return oy;
        }
        [RubyMethod("angle")]
        public static int GetAngle(RubySprite self)
        {
            return self.sp.Angle;
        }
        [RubyMethod("angle=")]
        public static int SetAngle(RubySprite self, int angle)
        {
            self.sp.Angle = angle;
            return angle;
        }
        [RubyMethod("dispose")]
        public static void Dispose(RubySprite self)
        {
            self.sp.Dispose();
        }
        [RubyMethod("zoom_x")]
        public static float GetZoomX(RubySprite self)
        {
            return self.sp.ZoomX;
        }
        [RubyMethod("zoom_x=")]
        public static void SetZoomX(RubySprite self, float zoomx)
        {
            self.sp.ZoomX = zoomx;
        }
        [RubyMethod("zoom_y")]
        public static float GetZoomY(RubySprite self)
        {
            return self.sp.ZoomY;
        }
        [RubyMethod("zoom_y=")]
        public static void SetZoomY(RubySprite self, float zoomy)
        {
            self.sp.ZoomY = zoomy;
        }

        [RubyMethod("tone")]
        public static Tone GetTone(RubySprite self)
        {
            return null;
        }

        [RubyMethod("tone=")]
        public static void SetTone(RubySprite self, Tone tone)
        {

        }

        [RubyMethod("update")]
        public static void Update(RubySprite self)
        {
            self.sp.Update();
        }

        [RubyMethod("opacity")]
        [RubyMethod("blend_type")]
        [RubyMethod("bush_depth")]
        public static void GetOpacity(RubySprite self)
        {
            
        }
        [RubyMethod("opacity=")]
        [RubyMethod("blend_type=")]
        [RubyMethod("bush_depth=")]
        public static void SetOpacity(RubySprite self, int opacity)
        {

        }
    }
}
