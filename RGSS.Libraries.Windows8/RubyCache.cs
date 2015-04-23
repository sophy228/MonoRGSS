using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Runtime;


namespace RGSS.Libraries.Builtins
{
    //[RubyModule("Cache")]
    public static class RubyCacheOps
    {
        [RubyMethodAttribute("face", RubyMethodAttributes.PublicSingleton)]
        public static Bitmap Face(object/*!*/ self, string name)
        {
           return Cache.Face(name);
        }
    }
}
