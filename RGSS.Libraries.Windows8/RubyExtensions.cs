using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby;
using IronRuby.Builtins;
using IronRuby.Runtime;
using IronRuby.StandardLibrary.Zlib;

namespace RGSS.Libraries.Builtins
{
    public static class RGSSKernel
    {
        //stub
    }
    [RubyClass(Extends = typeof(Object))]
    public static class RGSSKernelOps
    {
        [RubyMethod("load_data", RubyMethodAttributes.PrivateInstance)]
        [RubyMethod("load_data", RubyMethodAttributes.PublicSingleton)]
        public static object Load_Data(IronRuby.Builtins.RubyMarshal.ReaderSites/*!*/ sites, RubyScope/*!*/ scope,object/*!*/ self, MutableString/*!*/ path)
        {
            
            string strName = sites.Context.DecodePath(path);
            var stream = GameLibrary.RGSS.KernelOps.Load_Data(strName);
            RubyIO io = new RubyIO(sites.Context, stream, IOMode.ReadOnly);
            var obj = RubyMarshal.Load(sites, scope, null, io);
            stream.Dispose();
            return obj;
        }

        [RubyMethod("debugp", RubyMethodAttributes.PrivateInstance)]
        [RubyMethod("debugp", RubyMethodAttributes.PublicSingleton)]
        public static void DebugPrint(RubyScope/*!*/ scope,object/*!*/ self, object/*!*/ value)
        {
            Debug.WriteLine(value);
        }

        [RubyMethod("set_script", RubyMethodAttributes.PrivateInstance)]
        [RubyMethod("set_script", RubyMethodAttributes.PublicSingleton)]
        public static void SetScript(RubyScope/*!*/ scope,object/*!*/ self, object/*!*/ value)
        {

        }

        [RubyMethod("add_script", RubyMethodAttributes.PrivateInstance)]
        [RubyMethod("add_script", RubyMethodAttributes.PublicSingleton)]
        public static void SetScript(RubyScope/*!*/ scope, object/*!*/ self, MutableString/*!*/ filename, MutableString scriptcontext)
        {

        }
    }
}
