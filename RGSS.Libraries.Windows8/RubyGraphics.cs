using System.Runtime.InteropServices;
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

        [RubyMethodAttribute("snap_to_bitmap", RubyMethodAttributes.PublicSingleton)]
        public static Bitmap SanpToBitmap(object/*!*/ self)
        {
            return Graphics.SnapToBitmap();
        }

        [RubyMethodAttribute("wait", RubyMethodAttributes.PublicSingleton)]
        public static void Wait(object/*!*/ self, int duration)
        {

        }

        [RubyMethodAttribute("fadeout", RubyMethodAttributes.PublicSingleton)]
        public static void Fadeout(object/*!*/ self, int duration)
        {

        }

        [RubyMethodAttribute("fadein", RubyMethodAttributes.PublicSingleton)]
        public static void Fadein(object/*!*/ self, int duration)
        {

        }

        [RubyMethodAttribute("transition", RubyMethodAttributes.PublicSingleton)]
        public static void Transition(object/*!*/ self, int duration, [Optional]string filename, [Optional]int vague)
        {
            Graphics.Transition(duration, filename, vague);
        }

        [RubyMethodAttribute("frame_reset", RubyMethodAttributes.PublicSingleton)]
        public static void FrameReset(object/*!*/ self)
        {

        }

        [RubyMethodAttribute("width", RubyMethodAttributes.PublicSingleton)]
        public static int GetWidth(object/*!*/ self)
        {
            return Graphics.Width;
        }

        [RubyMethodAttribute("height", RubyMethodAttributes.PublicSingleton)]
        public static int GetHeight(object/*!*/ self)
        {
            return Graphics.Height;
        }

        [RubyMethodAttribute("resize_screen", RubyMethodAttributes.PublicSingleton)]
        public static void ResizeScreen(object/*!*/ self, int w, int h)
        {
        }

        [RubyMethodAttribute("frame_rate", RubyMethodAttributes.PublicSingleton)]
        public static int GetFrameRate(object/*!*/ self)
        {
            return 60;
        }

        [RubyMethodAttribute("frame_rate=", RubyMethodAttributes.PublicSingleton)]
        public static void SetFrameRate(object/*!*/ self, int fps)
        {

        }

        [RubyMethodAttribute("frame_count", RubyMethodAttributes.PublicSingleton)]
        public static int GetFrameCount(object/*!*/ self)
        {
            return Graphics.FrameCount;
        }

        [RubyMethodAttribute("frame_count=", RubyMethodAttributes.PublicSingleton)]
        public static void SetFrameCount(object/*!*/ self, int fc)
        {
     
        }

        [RubyMethodAttribute("brightness", RubyMethodAttributes.PublicSingleton)]
        public static float Getbrightness(object/*!*/ self)
        {
            return Graphics.Brightness;
        }

        [RubyMethodAttribute("brightness=", RubyMethodAttributes.PublicSingleton)]
        public static void Setbrightness(object/*!*/ self, float br)
        {
            Graphics.Brightness = br;
        }

    }
}
