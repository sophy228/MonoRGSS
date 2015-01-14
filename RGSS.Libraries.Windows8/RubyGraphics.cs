using GameLibrary.RGSS;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
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
