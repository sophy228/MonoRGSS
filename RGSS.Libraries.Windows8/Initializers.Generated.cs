/* ****************************************************************************
 *
 * Copyright (c) Microsoft Corporation. 
 *
 * This source code is subject to terms and conditions of the Apache License, Version 2.0. A 
 * copy of the license can be found in the License.html file at the root of this distribution. If 
 * you cannot locate the  Apache License, Version 2.0, please send an email to 
 * ironruby@microsoft.com. By using this source code in any fashion, you are agreeing to be bound 
 * by the terms of the Apache License, Version 2.0.
 *
 * You must not remove this notice, or any other, from this software.
 *
 *
 * ***************************************************************************/

#pragma warning disable 169 // mcs: unused private method
[assembly: IronRuby.Runtime.RubyLibraryAttribute(typeof(RGSS.Libraries.Builtins.BuiltinsLibraryInitializer))]

namespace RGSS.Libraries.Builtins {
    using System;
    using Microsoft.Scripting.Utils;
    using System.Runtime.InteropServices;
    
    public sealed class BuiltinsLibraryInitializer : IronRuby.Builtins.LibraryInitializer {
        protected override void LoadModules() {
            
            
            DefineGlobalModule("Graphics", typeof(RGSS.Libraries.Builtins.RubyGraphics), 0x00000008, null, LoadGraphics_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            ExtendClass(typeof(System.Object), 0x00000000, null, LoadSystem__Object_Instance, LoadSystem__Object_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            DefineGlobalClass("Bitmap", typeof(GameLibrary.RGSS.Bitmap), 0x00000000, Context.ObjectClass, LoadBitmap_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Create), 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Create)
            );
            DefineGlobalClass("Color", typeof(GameLibrary.RGSS.Color), 0x00000000, Context.ObjectClass, LoadColor_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Create), 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Create)
            );
            DefineGlobalClass("Database", typeof(RGSS.Libraries.Builtins.RubyDatabase), 0x00000008, Context.ObjectClass, LoadDatabase_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, RGSS.Libraries.Builtins.RubyDatabase>(RGSS.Libraries.Builtins.RubyDatabase.Create)
            );
            DefineGlobalClass("Rect", typeof(GameLibrary.RGSS.Rect), 0x00000000, Context.ObjectClass, LoadRect_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyRectOps.Create)
            );
            DefineGlobalClass("Sprite", typeof(GameLibrary.RGSS.Sprite), 0x00000000, Context.ObjectClass, LoadSprite_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Sprite>(RGSS.Libraries.Builtins.RubySpriteOps.CreateSprite)
            );
            DefineGlobalClass("Viewport", typeof(GameLibrary.RGSS.Viewport), 0x00000000, Context.ObjectClass, LoadViewport_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.CreateViewPort), 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Rect, GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.CreateViewPort)
            );
            DefineGlobalClass("Window", typeof(RGSS.Libraries.Builtins.RubyWindow), 0x00000008, Context.ObjectClass, LoadWindow_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, RGSS.Libraries.Builtins.RubyWindow>(RGSS.Libraries.Builtins.RubyWindow.Create)
            );
        }
        
        private static void LoadBitmap_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "blt", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.Blt)
            );
            
            DefineLibraryMethod(module, "clear", 0x11, 
                0x00000000U, 0x00000000U, 0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear), 
                new Action<GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear), 
                new Action<GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear)
            );
            
            DefineLibraryMethod(module, "draw_text", 0x11, 
                0x00000000U, 
                new Action<IronRuby.Runtime.RubyContext, GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, System.Int32, System.Int32, IronRuby.Builtins.MutableString, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.DrawText)
            );
            
            DefineLibraryMethod(module, "fill_rect", 0x11, 
                0x00000000U, 0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyBitmapOps.FillRect), 
                new Action<GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyBitmapOps.FillRect)
            );
            
            DefineLibraryMethod(module, "get_pixel", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyBitmapOps.GetPixel)
            );
            
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Bitmap, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.getHeight)
            );
            
            DefineLibraryMethod(module, "rect", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyBitmapOps.getRect)
            );
            
            DefineLibraryMethod(module, "stretch_blt", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect, GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.Blt)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Bitmap, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.getWidth)
            );
            
        }
        
        private static void LoadColor_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "alpha", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.GetAlpha)
            );
            
            DefineLibraryMethod(module, "alpha=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.SetAlpha)
            );
            
            DefineLibraryMethod(module, "blue", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.GetBlue)
            );
            
            DefineLibraryMethod(module, "blue=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.SetBlue)
            );
            
            DefineLibraryMethod(module, "green", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.GetGreen)
            );
            
            DefineLibraryMethod(module, "green=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.SetGreen)
            );
            
            DefineLibraryMethod(module, "red", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.GetRed)
            );
            
            DefineLibraryMethod(module, "red=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Color, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.SetRed)
            );
            
            DefineLibraryMethod(module, "set", 0x11, 
                0x00000000U, 0x00000000U, 
                new Action<GameLibrary.RGSS.Color, System.Int32, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyColorOps.Set), 
                new Action<GameLibrary.RGSS.Color, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Set)
            );
            
        }
        
        private static void LoadDatabase_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "initialize", 0x12, 
                0x00000002U, 
                new Func<RGSS.Libraries.Builtins.RubyDatabase, IronRuby.Builtins.MutableString, RGSS.Libraries.Builtins.RubyDatabase>(RGSS.Libraries.Builtins.RubyDatabase.Reinitialize)
            );
            
            DefineLibraryMethod(module, "open", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyDatabase, IronRuby.Builtins.RubyIO>(RGSS.Libraries.Builtins.RubyDatabase.Open)
            );
            
        }
        
        private static void LoadGraphics_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "freeze", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Freeze)
            );
            
            DefineLibraryMethod(module, "update", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Update)
            );
            
        }
        
        private static void LoadRect_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.GetHeight)
            );
            
            DefineLibraryMethod(module, "height=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.SetHeight)
            );
            
            DefineLibraryMethod(module, "set", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32, System.Int32, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.Set)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.GetWidth)
            );
            
            DefineLibraryMethod(module, "width=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.SetWidth)
            );
            
            DefineLibraryMethod(module, "x", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.GetX)
            );
            
            DefineLibraryMethod(module, "x=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.SetX)
            );
            
            DefineLibraryMethod(module, "y", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.GetY)
            );
            
            DefineLibraryMethod(module, "y=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Rect, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyRectOps.SetY)
            );
            
        }
        
        private static void LoadSprite_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "angle", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetAngle)
            );
            
            DefineLibraryMethod(module, "angle=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetAngle)
            );
            
            DefineLibraryMethod(module, "bitmap", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubySpriteOps.GetBitmap)
            );
            
            DefineLibraryMethod(module, "bitmap=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Bitmap, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetBitmap)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite>(RGSS.Libraries.Builtins.RubySpriteOps.Dispose)
            );
            
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.getHeight)
            );
            
            DefineLibraryMethod(module, "ox", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetOX)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetOY)
            );
            
            DefineLibraryMethod(module, "src_rect", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubySpriteOps.GetSrcRect)
            );
            
            DefineLibraryMethod(module, "src_rect=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetSrcRect)
            );
            
            DefineLibraryMethod(module, "visible", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Boolean>(RGSS.Libraries.Builtins.RubySpriteOps.GetVisible)
            );
            
            DefineLibraryMethod(module, "visible=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Boolean, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetVisible)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.getWidth)
            );
            
            DefineLibraryMethod(module, "x", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetX)
            );
            
            DefineLibraryMethod(module, "x=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetX)
            );
            
            DefineLibraryMethod(module, "y", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetY)
            );
            
            DefineLibraryMethod(module, "z", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetZ)
            );
            
            DefineLibraryMethod(module, "z=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetZ)
            );
            
            DefineLibraryMethod(module, "zoom_x", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubySpriteOps.GetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_x=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubySpriteOps.SetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_y", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubySpriteOps.GetZoomY)
            );
            
            DefineLibraryMethod(module, "zoom_y=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubySpriteOps.SetZoomY)
            );
            
        }
        
        private static void LoadSystem__Object_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "load_data", 0x12, 
                0x00000000U, 
                new Func<IronRuby.Builtins.RubyMarshal.ReaderSites, IronRuby.Runtime.RubyScope, System.Object, IronRuby.Builtins.MutableString, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.Load_Data)
            );
            
        }
        
        private static void LoadSystem__Object_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "load_data", 0x21, 
                0x00000000U, 
                new Func<IronRuby.Builtins.RubyMarshal.ReaderSites, IronRuby.Runtime.RubyScope, System.Object, IronRuby.Builtins.MutableString, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.Load_Data)
            );
            
        }
        
        private static void LoadViewport_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.Dispose)
            );
            
            DefineLibraryMethod(module, "z", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.GetZ)
            );
            
            DefineLibraryMethod(module, "z=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.SetZ)
            );
            
        }
        
        private static void LoadWindow_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "back_opacity", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetBackOpacity)
            );
            
            DefineLibraryMethod(module, "back_opacity=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetBackOpacity)
            );
            
            DefineLibraryMethod(module, "contents", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyWindow.GetContents)
            );
            
            DefineLibraryMethod(module, "contents_opacity", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetBackOpacity)
            );
            
            DefineLibraryMethod(module, "contents_opacity=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetBackOpacity)
            );
            
            DefineLibraryMethod(module, "contents=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyWindow.SetContents)
            );
            
            DefineLibraryMethod(module, "cursor_rect", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyWindow.GetCursorRect)
            );
            
            DefineLibraryMethod(module, "cursor_rect=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyWindow.SetCursorRect)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow>(RGSS.Libraries.Builtins.RubyWindow.Dispose)
            );
            
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetHeight)
            );
            
            DefineLibraryMethod(module, "height=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetHeight)
            );
            
            DefineLibraryMethod(module, "initialize", 0x12, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, RGSS.Libraries.Builtins.RubyWindow>(RGSS.Libraries.Builtins.RubyWindow.Reinitialize)
            );
            
            DefineLibraryMethod(module, "openness", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetBackOpacity)
            );
            
            DefineLibraryMethod(module, "openness=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetBackOpacity)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetOY)
            );
            
            DefineLibraryMethod(module, "update", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow>(RGSS.Libraries.Builtins.RubyWindow.Update)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetWidth)
            );
            
            DefineLibraryMethod(module, "width=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetWidth)
            );
            
            DefineLibraryMethod(module, "windowskin", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyWindow.GetWindowSkin)
            );
            
            DefineLibraryMethod(module, "windowskin=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyWindow.SetWindowSkin)
            );
            
            DefineLibraryMethod(module, "x", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetX)
            );
            
            DefineLibraryMethod(module, "x=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetX)
            );
            
            DefineLibraryMethod(module, "y", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetY)
            );
            
            DefineLibraryMethod(module, "y=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetY)
            );
            
            DefineLibraryMethod(module, "z", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetZ)
            );
            
            DefineLibraryMethod(module, "z=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetZ)
            );
            
        }
        
    }
}

