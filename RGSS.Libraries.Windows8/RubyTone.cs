using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Tone", Inherits = typeof(object), Extends = typeof(Tone))]
    public class RubyToneOps
    {
        [RubyConstructor]
        public static Tone Create(RubyClass self, int r, int g, int b, int gray = 0)
        {
            Tone tone = new Tone(r, g, b, gray);
            return tone;
        }
        [RubyConstructor]
        public static Tone Create(RubyClass self)
        {
            Tone tone = new Tone();
            return tone;
        }

        [RubyMethod("red")]
        public static int GetRed(Tone self)
        {
            return self.Red;
        }
        [RubyMethod("red=")]
        public static void SetRed(Tone self, int red)
        {
            self.Red = red;
        }
        [RubyMethod("green")]
        public static int GetGreen(Tone self)
        {
            return self.Green;
        }
        [RubyMethod("green=")]
        public static void SetGreen(Tone self, int green)
        {
            self.Green = green;
        }
        [RubyMethod("blue")]
        public static int GetBlue(Tone self)
        {
            return self.Blue;
        }
        [RubyMethod("blue=")]
        public static void SetBlue(Tone self, int blue)
        {
            self.Blue = blue;
        }
        [RubyMethod("gray")]
        public static int GetAlpha(Tone self)
        {
            return self.Gray;
        }
        [RubyMethod("gray=")]
        public static void SetAlpha(Tone self, int gray)
        {
            self.Gray = gray;
        }
        [RubyMethod("set")]
        public static void Set(Tone self, int r, int g, int b, [Optional]int gray)
        {
            self.SetTone(r, g, b, gray);
        }
        [RubyMethod("_load", RubyMethodAttributes.PublicSingleton)]
        public static Tone Load(RubyContext/*!*/ context, RubyClass/*!*/ self, [DefaultProtocol]MutableString/*!*/ str)
        {
            byte[] tones = str.ConvertToBytes();
            return Tone.Load(tones);
        }


        [RubyMethod("_dump")]
        public static MutableString Dump(RubyContext/*!*/ context, Tone/*!*/ self, [Optional]int depth)
        {
            var buffer = Tone.Store(self);
            return MutableString.CreateBinary(buffer.ToArray());
        }

    }
}
