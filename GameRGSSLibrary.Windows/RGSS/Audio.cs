using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using Microsoft.Xna.Framework.Audio;

namespace GameLibrary.RGSS
{
    enum SoundType
    {
        BGM,
        BGS,
        ME,
        SE
    };

    public class Audio
    {
        private static SoundEffect bgmSound;
        private static SoundEffectInstance bgmSoundInstance;

        private static SoundEffect bgsSound;
        private static SoundEffectInstance bgsSoundInstance;

        private static SoundEffect meSound;
        private static SoundEffectInstance meSoundInstance;

        private static SoundEffect seSound;
        private static SoundEffectInstance seSoundInstance;

        private static void Play(SoundType type,string filename, int volume = 100, int pitch = 100)
        {
            SoundEffect effect;
            SoundEffectInstance instance;

            var game = RGSSEngine.GetGame();
            filename = filename.Replace("/", "\\");
            effect = game.DrawManager.Content.Load<SoundEffect>(filename);
            instance = effect.CreateInstance();
            instance.Volume = volume / 100f;
            instance.Pitch = (pitch - 100) / 100f;

            
            if(type == SoundType.BGM)
            {
                instance.IsLooped = true;
                bgmSound = effect;
                bgmSoundInstance = instance;
            }
            else if(type == SoundType.BGS)
            {
                bgsSound = effect;
                bgsSoundInstance = instance;
            }
            else if(type == SoundType.ME)
            {
                meSound = effect;
                meSoundInstance = instance;
            }
            else if(type == SoundType.SE)
            {
                seSound = effect;
                seSoundInstance = instance;
            }
            instance.Play();
        }

        private static void Stop(SoundType type)
        {
            SoundEffectInstance instance = null;
            SoundEffect effect = null;
            if (type == SoundType.BGM)
            {
                instance = bgmSoundInstance;
                effect = bgmSound;
            }
            else if (type == SoundType.BGS)
            {
                instance = bgsSoundInstance;
                effect = bgsSound;
            }
            else if (type == SoundType.ME)
            {
                instance = meSoundInstance;
                effect = meSound;
            }
            else if (type == SoundType.SE)
            {
                instance = seSoundInstance;
                effect = seSound;
            }
            if(instance != null && instance.State != SoundState.Stopped)
            {
                instance.Stop();
                effect.Dispose();
            }
        }

        private static void Fade(SoundType type, int time)
        {

        }

        public static void PlayBgm(string filename, int volume=100, int pitch=100)
        {

            Play(SoundType.BGM, filename, volume, pitch);
        }

        public static void StopBgm()
        {
            Stop(SoundType.BGM);
        }

        public static void FadeBgm(int time)
        {
            Fade(SoundType.BGM, time);
        }

        public static void PlayBgs(string filename, int volume = 100, int pitch = 100)
        {

            Play(SoundType.BGS, filename, volume, pitch);
        }

        public static void StopBgs()
        {
            Stop(SoundType.BGS);
        }

        public static void FadeBgs(int time)
        {
            Fade(SoundType.BGS, time);
        }

        public static void PlayMe(string filename, int volume = 100, int pitch = 100)
        {

            Play(SoundType.ME, filename, volume, pitch);
        }

        public static void StopMe()
        {
            Stop(SoundType.ME);
        }

        public static void FadeMe(int time)
        {
            Fade(SoundType.ME, time);
        }

        public static void PlaySe(string filename, int volume = 100, int pitch = 100)
        {

            Play(SoundType.SE, filename, volume, pitch);
        }

        public static void StopSe()
        {
            Stop(SoundType.SE);
        }

        public static void FadeSe(int time)
        {
            Fade(SoundType.SE, time);
        }
    }
}
