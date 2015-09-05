using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyModule("Audio")]
    public static class RubyAudio
    {
        [RubyMethodAttribute("bgm_play", RubyMethodAttributes.PublicSingleton)]
        public static void PlayBgm(object/*!*/ self, string filename, [Optional]int volume, [Optional]int pitch)
        {
            Audio.PlayBgm(filename, volume, pitch);
        }

        [RubyMethodAttribute("bgm_stop", RubyMethodAttributes.PublicSingleton)]
        public static void StopBgm(object/*!*/ self)
        {
            Audio.StopBgm();
        }

        [RubyMethodAttribute("bgm_fade", RubyMethodAttributes.PublicSingleton)]
        public static void FadeBgm(object/*!*/ self, int time)
        {
            Audio.FadeBgm(time);
        }

        [RubyMethodAttribute("bgs_play", RubyMethodAttributes.PublicSingleton)]
        public static void PlayBgs(object/*!*/ self, string filename, [Optional]int volume, [Optional]int pitch)
        {
            Audio.PlayBgs(filename, volume, pitch);
        }

        [RubyMethodAttribute("bgs_stop", RubyMethodAttributes.PublicSingleton)]
        public static void StopBgs(object/*!*/ self)
        {
            Audio.StopBgs();
        }

        [RubyMethodAttribute("bgs_fade", RubyMethodAttributes.PublicSingleton)]
        public static void FadeBgs(object/*!*/ self, int time)
        {
            Audio.FadeBgs(time);
        }

        [RubyMethodAttribute("me_play", RubyMethodAttributes.PublicSingleton)]
        public static void PlayMe(object/*!*/ self, string filename, [Optional]int volume, [Optional]int pitch)
        {
            Audio.PlayMe(filename, volume, pitch);
        }

        [RubyMethodAttribute("me_stop", RubyMethodAttributes.PublicSingleton)]
        public static void StopMe(object/*!*/ self)
        {
            Audio.StopMe();
        }

        [RubyMethodAttribute("me_fade", RubyMethodAttributes.PublicSingleton)]
        public static void FadeMe(object/*!*/ self, int time)
        {
            Audio.FadeMe(time);
        }

        [RubyMethodAttribute("se_play", RubyMethodAttributes.PublicSingleton)]
        public static void PlaySe(object/*!*/ self, string filename, [Optional]int volume, [Optional]int pitch)
        {
            Audio.PlaySe(filename, volume, pitch);
        }

        [RubyMethodAttribute("se_stop", RubyMethodAttributes.PublicSingleton)]
        public static void StopSe(object/*!*/ self)
        {
            Audio.StopSe();
        }

        [RubyMethodAttribute("se_fade", RubyMethodAttributes.PublicSingleton)]
        public static void FadeSe(object/*!*/ self, int time)
        {
            Audio.FadeSe(time);
        }
    }
}
