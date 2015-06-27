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
            
            
            DefineGlobalModule("Debug", typeof(RGSS.Libraries.Builtins.RubyDebug), 0x00000008, null, LoadDebug_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            DefineGlobalModule("Graphics", typeof(RGSS.Libraries.Builtins.RubyGraphics), 0x00000008, null, LoadGraphics_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            DefineGlobalModule("Input", typeof(RGSS.Libraries.Builtins.RubyInputOps), 0x00000008, null, LoadInput_Class, LoadInput_Constants, IronRuby.Builtins.RubyModule.EmptyArray);
            ExtendClass(typeof(System.Object), 0x00000000, null, LoadSystem__Object_Instance, LoadSystem__Object_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            DefineGlobalClass("Bitmap", typeof(GameLibrary.RGSS.Bitmap), 0x00000000, Context.ObjectClass, LoadBitmap_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Create), 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Create)
            );
            DefineGlobalClass("Color", typeof(GameLibrary.RGSS.Color), 0x00000000, Context.ObjectClass, LoadColor_Instance, LoadColor_Class, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Create), 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Create)
            );
            DefineGlobalClass("Database", typeof(RGSS.Libraries.Builtins.RubyDatabase), 0x00000008, Context.ObjectClass, LoadDatabase_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, RGSS.Libraries.Builtins.RubyDatabase>(RGSS.Libraries.Builtins.RubyDatabase.Create)
            );
            DefineGlobalClass("Plane", typeof(GameLibrary.RGSS.Plane), 0x00000000, Context.ObjectClass, LoadPlane_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Plane>(RGSS.Libraries.Builtins.RubyPlaneOps.CreateSprite)
            );
            DefineGlobalClass("Rect", typeof(GameLibrary.RGSS.Rect), 0x00000000, Context.ObjectClass, LoadRect_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyRectOps.Create)
            );
            DefineGlobalClass("Sprite", typeof(RGSS.Libraries.Builtins.RubySprite), 0x00000008, Context.ObjectClass, LoadSprite_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Viewport, RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.CreateSprite)
            );
            DefineGlobalClass("Table", typeof(GameLibrary.RGSS.Table), 0x00000000, Context.ObjectClass, LoadTable_Instance, LoadTable_Class, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.RubyTableOps.CreateTable)
            );
            DefineGlobalClass("Tilemap", typeof(GameLibrary.RGSS.Tilemap), 0x00000000, Context.ObjectClass, LoadTilemap_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Tilemap>(RGSS.Libraries.Builtins.TilemapOps.CreateTilemap)
            );
            DefineGlobalClass("Tone", typeof(GameLibrary.RGSS.Tone), 0x00000000, Context.ObjectClass, LoadTone_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray, 
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubyToneOps.Create)
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
                0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear)
            );
            
            DefineLibraryMethod(module, "clear_rect", 0x11, 
                0x00000000U, 0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear), 
                new Action<GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.Clear)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyBitmapOps.Dispose)
            );
            
            DefineLibraryMethod(module, "disposed?", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Bitmap, System.Boolean>(RGSS.Libraries.Builtins.RubyBitmapOps.IsDisposed)
            );
            
            DefineLibraryMethod(module, "draw_text", 0x11, 
                0x00000000U, 0x00000000U, 
                new Action<IronRuby.Runtime.RubyContext, GameLibrary.RGSS.Bitmap, System.Int32, System.Int32, System.Int32, System.Int32, IronRuby.Builtins.MutableString, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.DrawText), 
                new Action<IronRuby.Runtime.RubyContext, GameLibrary.RGSS.Bitmap, GameLibrary.RGSS.Rect, IronRuby.Builtins.MutableString, System.Int32>(RGSS.Libraries.Builtins.RubyBitmapOps.DrawText)
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
        
        private static void LoadColor_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "_load", 0x21, 
                0x00020000U, 
                new Func<IronRuby.Runtime.RubyContext, IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, GameLibrary.RGSS.Color>(RGSS.Libraries.Builtins.RubyColorOps.Load)
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
        
        private static void LoadDebug_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "test", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Object>(RGSS.Libraries.Builtins.RubyDebug.Update)
            );
            
        }
        
        private static void LoadGraphics_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "brightness", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Getbrightness)
            );
            
            DefineLibraryMethod(module, "brightness=", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Setbrightness)
            );
            
            DefineLibraryMethod(module, "fadein", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Fadein)
            );
            
            DefineLibraryMethod(module, "fadeout", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Fadeout)
            );
            
            DefineLibraryMethod(module, "frame_count", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.GetFrameCount)
            );
            
            DefineLibraryMethod(module, "frame_count=", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.SetFrameCount)
            );
            
            DefineLibraryMethod(module, "frame_rate", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.GetFrameRate)
            );
            
            DefineLibraryMethod(module, "frame_rate=", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.SetFrameRate)
            );
            
            DefineLibraryMethod(module, "frame_reset", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.FrameReset)
            );
            
            DefineLibraryMethod(module, "freeze", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Freeze)
            );
            
            DefineLibraryMethod(module, "height", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.GetHeight)
            );
            
            DefineLibraryMethod(module, "resize_screen", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.ResizeScreen)
            );
            
            DefineLibraryMethod(module, "snap_to_bitmap", 0x21, 
                0x00000000U, 
                new Func<System.Object, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyGraphics.SanpToBitmap)
            );
            
            DefineLibraryMethod(module, "transition", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32, System.String, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Transition)
            );
            
            DefineLibraryMethod(module, "update", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Update)
            );
            
            DefineLibraryMethod(module, "wait", 0x21, 
                0x00000000U, 
                new Action<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.Wait)
            );
            
            DefineLibraryMethod(module, "width", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyGraphics.GetWidth)
            );
            
        }
        
        private static void LoadInput_Constants(IronRuby.Builtins.RubyModule/*!*/ module) {
            SetConstant(module, "A", RGSS.Libraries.Builtins.RubyInputOps.A);
            SetConstant(module, "B", RGSS.Libraries.Builtins.RubyInputOps.B);
            SetConstant(module, "C", RGSS.Libraries.Builtins.RubyInputOps.C);
            SetConstant(module, "D", RGSS.Libraries.Builtins.RubyInputOps.D);
            SetConstant(module, "DOWN", RGSS.Libraries.Builtins.RubyInputOps.DOWN);
            SetConstant(module, "LEFT", RGSS.Libraries.Builtins.RubyInputOps.LEFT);
            SetConstant(module, "RIGHT", RGSS.Libraries.Builtins.RubyInputOps.RIGHT);
            SetConstant(module, "UP", RGSS.Libraries.Builtins.RubyInputOps.UP);
            
        }
        
        private static void LoadInput_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "dir4", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32>(RGSS.Libraries.Builtins.RubyInputOps.Dir4)
            );
            
            DefineLibraryMethod(module, "press?", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32, System.Boolean>(RGSS.Libraries.Builtins.RubyInputOps.IsPress)
            );
            
            DefineLibraryMethod(module, "repeat?", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32, System.Boolean>(RGSS.Libraries.Builtins.RubyInputOps.IsRepeat)
            );
            
            DefineLibraryMethod(module, "trigger?", 0x21, 
                0x00000000U, 
                new Func<System.Object, System.Int32, System.Boolean>(RGSS.Libraries.Builtins.RubyInputOps.IsTrigger)
            );
            
            DefineLibraryMethod(module, "update", 0x21, 
                0x00000000U, 
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyInputOps.Update)
            );
            
        }
        
        private static void LoadPlane_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "angle", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetAngle)
            );
            
            DefineLibraryMethod(module, "angle=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetAngle)
            );
            
            DefineLibraryMethod(module, "bitmap", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubyPlaneOps.GetBitmap)
            );
            
            DefineLibraryMethod(module, "bitmap=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Bitmap, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetBitmap)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite>(RGSS.Libraries.Builtins.RubyPlaneOps.Dispose)
            );
            
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.getHeight)
            );
            
            DefineLibraryMethod(module, "ox", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetOX)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetOY)
            );
            
            DefineLibraryMethod(module, "src_rect", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyPlaneOps.GetSrcRect)
            );
            
            DefineLibraryMethod(module, "src_rect=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetSrcRect)
            );
            
            DefineLibraryMethod(module, "tone", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubyPlaneOps.GetTone)
            );
            
            DefineLibraryMethod(module, "tone=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubyPlaneOps.SetTone)
            );
            
            DefineLibraryMethod(module, "visible", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Boolean>(RGSS.Libraries.Builtins.RubyPlaneOps.GetVisible)
            );
            
            DefineLibraryMethod(module, "visible=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Boolean, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetVisible)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.getWidth)
            );
            
            DefineLibraryMethod(module, "x", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetX)
            );
            
            DefineLibraryMethod(module, "x=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetX)
            );
            
            DefineLibraryMethod(module, "y", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetY)
            );
            
            DefineLibraryMethod(module, "y=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetY)
            );
            
            DefineLibraryMethod(module, "z", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.GetZ)
            );
            
            DefineLibraryMethod(module, "z=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyPlaneOps.SetZ)
            );
            
            DefineLibraryMethod(module, "zoom_x", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubyPlaneOps.GetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_x=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubyPlaneOps.SetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_y", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubyPlaneOps.GetZoomY)
            );
            
            DefineLibraryMethod(module, "zoom_y=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Sprite, System.Single>(RGSS.Libraries.Builtins.RubyPlaneOps.SetZoomY)
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
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetAngle)
            );
            
            DefineLibraryMethod(module, "angle=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetAngle)
            );
            
            DefineLibraryMethod(module, "bitmap", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Bitmap>(RGSS.Libraries.Builtins.RubySprite.GetBitmap)
            );
            
            DefineLibraryMethod(module, "bitmap=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Bitmap, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetBitmap)
            );
            
            DefineLibraryMethod(module, "blend_type", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.GetOpacity)
            );
            
            DefineLibraryMethod(module, "blend_type=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetOpacity)
            );
            
            DefineLibraryMethod(module, "bush_depth", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.GetOpacity)
            );
            
            DefineLibraryMethod(module, "bush_depth=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetOpacity)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.Dispose)
            );
            
            DefineLibraryMethod(module, "height", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.getHeight)
            );
            
            DefineLibraryMethod(module, "initialize", 0x12, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Viewport, RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.Reinitialize)
            );
            
            DefineLibraryMethod(module, "opacity", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.GetOpacity)
            );
            
            DefineLibraryMethod(module, "opacity=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetOpacity)
            );
            
            DefineLibraryMethod(module, "ox", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetOX)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetOY)
            );
            
            DefineLibraryMethod(module, "src_rect", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubySprite.GetSrcRect)
            );
            
            DefineLibraryMethod(module, "src_rect=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Rect, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetSrcRect)
            );
            
            DefineLibraryMethod(module, "tone", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubySprite.GetTone)
            );
            
            DefineLibraryMethod(module, "tone=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubySprite.SetTone)
            );
            
            DefineLibraryMethod(module, "update", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite>(RGSS.Libraries.Builtins.RubySprite.Update)
            );
            
            DefineLibraryMethod(module, "visible", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Boolean>(RGSS.Libraries.Builtins.RubySprite.GetVisible)
            );
            
            DefineLibraryMethod(module, "visible=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Boolean, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetVisible)
            );
            
            DefineLibraryMethod(module, "width", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.getWidth)
            );
            
            DefineLibraryMethod(module, "x", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetX)
            );
            
            DefineLibraryMethod(module, "x=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetX)
            );
            
            DefineLibraryMethod(module, "y", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetY)
            );
            
            DefineLibraryMethod(module, "y=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetY)
            );
            
            DefineLibraryMethod(module, "z", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32>(RGSS.Libraries.Builtins.RubySprite.GetZ)
            );
            
            DefineLibraryMethod(module, "z=", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySprite.SetZ)
            );
            
            DefineLibraryMethod(module, "zoom_x", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Single>(RGSS.Libraries.Builtins.RubySprite.GetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_x=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, System.Single>(RGSS.Libraries.Builtins.RubySprite.SetZoomX)
            );
            
            DefineLibraryMethod(module, "zoom_y", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubySprite, System.Single>(RGSS.Libraries.Builtins.RubySprite.GetZoomY)
            );
            
            DefineLibraryMethod(module, "zoom_y=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubySprite, System.Single>(RGSS.Libraries.Builtins.RubySprite.SetZoomY)
            );
            
        }
        
        private static void LoadSystem__Object_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "debugp", 0x12, 
                0x00000000U, 
                new Action<IronRuby.Runtime.RubyScope, System.Object, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.DebugPrint)
            );
            
            DefineLibraryMethod(module, "load_data", 0x12, 
                0x00000000U, 
                new Func<IronRuby.Builtins.RubyMarshal.ReaderSites, IronRuby.Runtime.RubyScope, System.Object, IronRuby.Builtins.MutableString, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.Load_Data)
            );
            
        }
        
        private static void LoadSystem__Object_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "debugp", 0x21, 
                0x00000000U, 
                new Action<IronRuby.Runtime.RubyScope, System.Object, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.DebugPrint)
            );
            
            DefineLibraryMethod(module, "load_data", 0x21, 
                0x00000000U, 
                new Func<IronRuby.Builtins.RubyMarshal.ReaderSites, IronRuby.Runtime.RubyScope, System.Object, IronRuby.Builtins.MutableString, System.Object>(RGSS.Libraries.Builtins.RGSSKernelOps.Load_Data)
            );
            
        }
        
        private static void LoadTable_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "resize", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Table, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyTableOps.Reseize)
            );
            
            DefineLibraryMethod(module, "xsize", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Table, System.Int32>(RGSS.Libraries.Builtins.RubyTableOps.GetXsize)
            );
            
            DefineLibraryMethod(module, "ysize", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Table, System.Int32>(RGSS.Libraries.Builtins.RubyTableOps.GetYsize)
            );
            
            DefineLibraryMethod(module, "zsize", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Table, System.Int32>(RGSS.Libraries.Builtins.RubyTableOps.GetZsize)
            );
            
        }
        
        private static void LoadTable_Class(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "_load", 0x21, 
                0x00020000U, 
                new Func<IronRuby.Runtime.RubyContext, IronRuby.Builtins.RubyClass, IronRuby.Builtins.MutableString, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.RubyTableOps.Load)
            );
            
        }
        
        private static void LoadTilemap_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "bitmaps", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, GameLibrary.RGSS.Bitmap[]>(RGSS.Libraries.Builtins.TilemapOps.GetBitmaps)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tilemap>(RGSS.Libraries.Builtins.TilemapOps.Dispose)
            );
            
            DefineLibraryMethod(module, "map_data", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.TilemapOps.GetMapdata)
            );
            
            DefineLibraryMethod(module, "map_data=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tilemap, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.TilemapOps.SetMapdata)
            );
            
            DefineLibraryMethod(module, "ox", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, System.Int32>(RGSS.Libraries.Builtins.TilemapOps.GetOX)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, System.Int32, System.Int32>(RGSS.Libraries.Builtins.TilemapOps.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, System.Int32>(RGSS.Libraries.Builtins.TilemapOps.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, System.Int32, System.Int32>(RGSS.Libraries.Builtins.TilemapOps.SetOY)
            );
            
            DefineLibraryMethod(module, "passages ", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tilemap, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.TilemapOps.GetPassages)
            );
            
            DefineLibraryMethod(module, "passages=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tilemap, GameLibrary.RGSS.Table>(RGSS.Libraries.Builtins.TilemapOps.SetPassages)
            );
            
            DefineLibraryMethod(module, "update", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tilemap>(RGSS.Libraries.Builtins.TilemapOps.Update)
            );
            
        }
        
        private static void LoadTone_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "blue", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.GetBlue)
            );
            
            DefineLibraryMethod(module, "blue=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.SetBlue)
            );
            
            DefineLibraryMethod(module, "gray", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.GetAlpha)
            );
            
            DefineLibraryMethod(module, "gray=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.SetAlpha)
            );
            
            DefineLibraryMethod(module, "green", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.GetGreen)
            );
            
            DefineLibraryMethod(module, "green=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.SetGreen)
            );
            
            DefineLibraryMethod(module, "red", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.GetRed)
            );
            
            DefineLibraryMethod(module, "red=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tone, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.SetRed)
            );
            
            DefineLibraryMethod(module, "set", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Tone, System.Int32, System.Int32, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyToneOps.Set)
            );
            
        }
        
        private static void LoadViewport_Instance(IronRuby.Builtins.RubyModule/*!*/ module) {
            DefineLibraryMethod(module, "color", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubyViewportOps.GetTone)
            );
            
            DefineLibraryMethod(module, "color=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport, System.Object>(RGSS.Libraries.Builtins.RubyViewportOps.SetTone)
            );
            
            DefineLibraryMethod(module, "dispose", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.Dispose)
            );
            
            DefineLibraryMethod(module, "ox", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.GetOX)
            );
            
            DefineLibraryMethod(module, "ox=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.SetOX)
            );
            
            DefineLibraryMethod(module, "oy", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.GetOY)
            );
            
            DefineLibraryMethod(module, "oy=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.SetOY)
            );
            
            DefineLibraryMethod(module, "tone", 0x11, 
                0x00000000U, 
                new Func<GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Tone>(RGSS.Libraries.Builtins.RubyViewportOps.GetTone)
            );
            
            DefineLibraryMethod(module, "tone=", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport, System.Object>(RGSS.Libraries.Builtins.RubyViewportOps.SetTone)
            );
            
            DefineLibraryMethod(module, "update", 0x11, 
                0x00000000U, 
                new Action<GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.Update)
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
            DefineLibraryMethod(module, "active", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.GetActive)
            );
            
            DefineLibraryMethod(module, "active=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.SetActive)
            );
            
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
            
            DefineLibraryMethod(module, "opacity=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetBackOpacity)
            );
            
            DefineLibraryMethod(module, "openness", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.GetOpenness)
            );
            
            DefineLibraryMethod(module, "openness=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Int32>(RGSS.Libraries.Builtins.RubyWindow.SetOpenness)
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
            
            DefineLibraryMethod(module, "pause", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.GetPause)
            );
            
            DefineLibraryMethod(module, "pause=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.SetPause)
            );
            
            DefineLibraryMethod(module, "update", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow>(RGSS.Libraries.Builtins.RubyWindow.Update)
            );
            
            DefineLibraryMethod(module, "visible", 0x11, 
                0x00000000U, 
                new Func<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.GetVisible)
            );
            
            DefineLibraryMethod(module, "visible=", 0x11, 
                0x00000000U, 
                new Action<RGSS.Libraries.Builtins.RubyWindow, System.Boolean>(RGSS.Libraries.Builtins.RubyWindow.SetVisible)
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

