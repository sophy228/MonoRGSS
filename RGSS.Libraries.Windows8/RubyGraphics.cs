using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameRGSSLibrary.Windows.RGSS;
using IronRuby.Runtime;

namespace RGSS.Libraries.RubyGraphics
{
    [RubyModule("Graphics")]
    public static class RubyGraphics
    {
        #region Constants

        #endregion

        [RubyMethodAttribute("update", RubyMethodAttributes.PublicSingleton)]
        public static void Update(object/*!*/ self)
        {
            Graphics.Update();
        }

        [RubyMethodAttribute("freeze", RubyMethodAttributes.PublicSingleton)]
        public static void Freeze(object/*!*/ self)
        {
            Graphics.Freeze();
        }
    }
}
