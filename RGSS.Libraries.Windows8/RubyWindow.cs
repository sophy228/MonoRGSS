using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Window", Inherits = typeof(object))]
    public class RubyWindow:RubyObject
    {
        private Window window;
        public RubyWindow(RubyClass/*!*/ cls)
            :base(cls)
        {
            window = new Window();
        }
        [RubyConstructor]
        public static RubyWindow Create(RubyClass self)
        {

            return new RubyWindow(self);
        }
        [RubyMethod("initialize", RubyMethodAttributes.PrivateInstance)]
        public static RubyWindow Reinitialize(RubyWindow self)
        {
            return self;
        }
        [RubyMethod("x")]
        public static int GetX(RubyWindow self)
        {
            return self.window.X;
        }
        [RubyMethod("x=")]
        public static void SetX(RubyWindow self, int x)
        {
            self.window.X = x;
        }
        [RubyMethod("y")]
        public static int GetY(RubyWindow self)
        {
            return self.window.Y;
        }
        [RubyMethod("y=")]
        public static void SetY(RubyWindow self, int y)
        {
            self.window.Y = y;
        }
        [RubyMethod("z")]
        public static int GetZ(RubyWindow self)
        {
            return self.window.Z;
        }
        [RubyMethod("z=")]
        public static void SetZ(RubyWindow self, int z)
        {
            self.window.Z = z;
        }
        [RubyMethod("width")]
        public static int GetWidth(RubyWindow self)
        {
            return self.window.Width;
        }
        [RubyMethod("width=")]
        public static void SetWidth(RubyWindow self, int width)
        {
            self.window.Width = width;
        }
        [RubyMethod("height")]
        public static int GetHeight(RubyWindow self)
        {
            return self.window.Height;
        }
        [RubyMethod("height=")]
        public static void SetHeight(RubyWindow self, int height)
        {
            self.window.Height = height;
        }
        [RubyMethod("ox=")]
        public static void SetOX(RubyWindow self, int ox)
        {
            self.window.Ox = ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(RubyWindow self)
        {
            return self.window.Oy;
        }
        [RubyMethod("oy=")]
        public static void SetOY(RubyWindow self, int oy)
        {
            self.window.Oy = oy;
        }

        [RubyMethod("viewport")]
        public static Viewport GetViewport(RubyWindow self, Viewport vp)
        {
           return  self.window.Viewport ;
        }
        [RubyMethod("viewport=")]
        public static void SetViewport(RubyWindow self, Viewport vp)
        {
            self.window.Viewport = vp;
        }


        [RubyMethod("dispose")]
        public static void Dispose(RubyWindow self)
        {
            self.window.Dispose();
        }
        [RubyMethod("contents")]
        public static Bitmap GetContents(RubyWindow self)
        {
            return self.window.Contents;
        }
        [RubyMethod("contents=")]
        public static void SetContents(RubyWindow self, Bitmap bitmap)
        {
            self.window.Contents = bitmap;
        }
        [RubyMethod("cursor_rect")]
        public static Rect GetCursorRect(RubyWindow self)
        {
            return self.window.CursorRect;
        }
        [RubyMethod("cursor_rect=")]
        public static void SetCursorRect(RubyWindow self, Rect rect)
        {
            self.window.CursorRect = rect;
        }
        [RubyMethod("windowskin")]
        public static Bitmap GetWindowSkin(RubyWindow self)
        {
            return self.window.WindowSKin;
        }
        [RubyMethod("windowskin=")]
        public static void SetWindowSkin(RubyWindow self, Bitmap bitmap)
        {
            self.window.WindowSKin = bitmap;
        }

        [RubyMethod("openness")]
        public static int GetOpenness(RubyWindow self)
        {
            return self.window.Openness;
        }
        [RubyMethod("contents_opacity")]
        [RubyMethod("back_opacity")]
        public static int GetBackOpacity(RubyWindow self)
        {
            return 255;
        }

        [RubyMethod("openness=")]
        public static void SetOpenness(RubyWindow self, int openness)
        {
            self.window.Openness = openness;
        }
        [RubyMethod("contents_opacity=")]
        [RubyMethod("back_opacity=")]
        [RubyMethod("opacity=")]
        public static void SetBackOpacity(RubyWindow self,int backopacity)
        {
            //todo
        }

        
        
        [RubyMethod("active")]
        public static bool GetActive(RubyWindow self)
        {
            return self.window.Active;
        }
        [RubyMethod("active=")]
        public static void SetActive(RubyWindow self, bool b)
        {
            self.window.Active = b;
        }
        
        [RubyMethod("pause")]
        public static bool GetPause(RubyWindow self)
        {
            return self.window.Pause;
        }

        [RubyMethod("pause=")]
        public static void SetPause(RubyWindow self, bool b)
        {
            self.window.Pause = b;
        }

        [RubyMethod("visible")]
        public static bool GetVisible(RubyWindow self)
        {
            return self.window.Visible;
        }
        [RubyMethod("visible=")]
        public static void SetVisible(RubyWindow self, bool b)
        {
            self.window.Visible = b;
        }
        
        [RubyMethod("update")]
        public static void Update(RubyWindow self)
        {
            //do nothing
            self.window.Update();
        }
    }
#if false   
    [RubyClass("Window", Inherits = typeof(object), Extends = typeof(Window))]
    public static class RubyWindowOps
    {
        [RubyConstructor]
        public static Window CreateWindow(RubyClass self, int x, int y, int width, int height)
        {
            return new Window(x, y, width, height);
        }
        [RubyConstructor]
        public static Window CreateWindow(RubyClass self)
        {
            return new Window();
        }
        [RubyMethod("x")]
        public static int GetX(Window self)
        {
            return self.X;
        }
        [RubyMethod("x=")]
        public static void SetX(Window self, int x)
        {
            self.X = x;
        }
        [RubyMethod("y")]
        public static int GetY(Window self)
        {
            return self.Y;
        }
        [RubyMethod("y=")]
        public static void SetY(Window self,int y)
        {
            self.Y = y;
        }
        [RubyMethod("z")]
        public static int GetZ(Window self)
        {
            return self.Z;
        }
        [RubyMethod("width")]
        public static int GetWidth(Window self)
        {
            return self.Width;
        }
        [RubyMethod("width=")]
        public static void SetWidth(Window self, int width)
        {
            self.Width = width;
        }
        [RubyMethod("height")]
        public static int GetHeight(Window self)
        {
            return self.Height;
        }
        [RubyMethod("height=")]
        public static void SetHeight(Window self, int height)
        {
            self.Height = height;
        }
        [RubyMethod("z=")]
        public static void SetZ(Window self, int z)
        {
            self.Z = z;
        }
        [RubyMethod("ox")]
        public static int GetOX(Window self)
        {
            return self.Ox;
        }
        [RubyMethod("ox=")]
        public static void SetOX(Window self, int ox)
        {
            self.Ox = ox;
        }
        [RubyMethod("oy")]
        public static int GetOY(Window self)
        {
            return self.Oy;
        }
        [RubyMethod("oy=")]
        public static void SetOY(Window self, int oy)
        {
            self.Oy = oy;
        }
        [RubyMethod("dispose")]
        public static void Dispose(Window self)
        {
            self.Dispose();
        }
        [RubyMethod("contents")]
        public static Bitmap GetContents(Window self)
        {
            return self.Contents;
        }
        [RubyMethod("contents=")]
        public static void SetContents(Window self, Bitmap bitmap)
        {
            self.Contents = bitmap;
        }
        [RubyMethod("cursor_rect")]
        public static Rect GetCursorRect(Window self)
        {
            return self.CursorRect;
        }
        [RubyMethod("cursor_rect=")]
        public static void SetCursorRect(Window self, Rect rect)
        {
            self.CursorRect = rect;
        }
        [RubyMethod("update")]
        public static void Update(Window self)
        {
            //do nothing
        }
        [RubyMethod("test")]
        public static object Test(RubyContext context, Window self, MutableString oj)
        {
            var txt = context.DecodePath(oj);
            return txt;
        }
    }
#endif
}
