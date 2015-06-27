using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyModule("Debug")]
    public static class RubyDebug
    {
        [RubyMethodAttribute("test", RubyMethodAttributes.PublicSingleton)]
        public static void Update(object/*!*/ self, object arg)
        {
            Debug.WriteLine(arg);
        }
    }
}
