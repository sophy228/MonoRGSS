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

namespace RGSS.Libraries.Builtins
{
    using System;
    using Microsoft.Scripting.Utils;
    using System.Runtime.InteropServices;

    public sealed class BuiltinsLibraryInitializer : IronRuby.Builtins.LibraryInitializer
    {
        protected override void LoadModules()
        {
            IronRuby.Builtins.RubyClass classRef0 = GetClass(typeof(System.Object));


            DefineGlobalModule("Graphics", typeof(RGSS.Libraries.Builtins.RubyGraphics), 0x00000008, null, LoadGraphics_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
            DefineGlobalClass("Rect", typeof(GameLibrary.RGSS.Rect), 0x00000000, classRef0, LoadRect_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray,
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Rect>(RGSS.Libraries.Builtins.RubyRectOps.Create)
            );
            DefineGlobalClass("Sprite", typeof(GameLibrary.RGSS.Sprite), 0x00000000, classRef0, LoadSprite_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray,
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Viewport, GameLibrary.RGSS.Sprite>(RGSS.Libraries.Builtins.RubySpriteOps.CreateSprite)
            );
            DefineGlobalClass("Viewport", typeof(GameLibrary.RGSS.Viewport), 0x00000000, classRef0, LoadViewport_Instance, null, null, IronRuby.Builtins.RubyModule.EmptyArray,
                new Func<IronRuby.Builtins.RubyClass, System.Int32, System.Int32, System.Int32, System.Int32, GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.CreateViewPort),
                new Func<IronRuby.Builtins.RubyClass, GameLibrary.RGSS.Rect, GameLibrary.RGSS.Viewport>(RGSS.Libraries.Builtins.RubyViewportOps.CreateViewPort)
            );
        }

        private static void LoadGraphics_Class(IronRuby.Builtins.RubyModule/*!*/ module)
        {
            DefineLibraryMethod(module, "freeze", 0x21,
                0x00000000U,
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Freeze)
            );

            DefineLibraryMethod(module, "update", 0x21,
                0x00000000U,
                new Action<System.Object>(RGSS.Libraries.Builtins.RubyGraphics.Update)
            );

        }

        private static void LoadRect_Instance(IronRuby.Builtins.RubyModule/*!*/ module)
        {
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

        private static void LoadSprite_Instance(IronRuby.Builtins.RubyModule/*!*/ module)
        {
            DefineLibraryMethod(module, "z", 0x11,
                0x00000000U,
                new Func<GameLibrary.RGSS.Sprite, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.GetZ)
            );

            DefineLibraryMethod(module, "z=", 0x11,
                0x00000000U,
                new Func<GameLibrary.RGSS.Sprite, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubySpriteOps.SetZ)
            );

        }

        private static void LoadViewport_Instance(IronRuby.Builtins.RubyModule/*!*/ module)
        {
            DefineLibraryMethod(module, "z", 0x11,
                0x00000000U,
                new Func<GameLibrary.RGSS.Viewport, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.GetZ)
            );

            DefineLibraryMethod(module, "z=", 0x11,
                0x00000000U,
                new Func<GameLibrary.RGSS.Viewport, System.Int32, System.Int32>(RGSS.Libraries.Builtins.RubyViewportOps.SetZ)
            );

        }

    }
}

