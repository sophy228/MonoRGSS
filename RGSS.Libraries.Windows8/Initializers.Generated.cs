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


            DefineGlobalModule("Graphics", typeof(RGSS.Libraries.Builtins.RubyGraphics), 0x00000008, null, LoadGraphics_Class, null, IronRuby.Builtins.RubyModule.EmptyArray);
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

    }
}

