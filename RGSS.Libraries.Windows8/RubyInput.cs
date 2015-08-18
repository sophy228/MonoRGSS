using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IronRuby.Runtime;
using RPGVXLibrary.Input;

namespace RGSS.Libraries.Builtins
{
    [RubyModule("Input")]
    public static class RubyInputOps
    {
        [RubyConstant]
        public const int LEFT = (int)Keys.LEFT;
        [RubyConstant]
        public const int RIGHT = (int)Keys.RIGHT;
        [RubyConstant]
        public const int UP = (int)Keys.UP;
        [RubyConstant]
        public const int DOWN = (int)Keys.Down;
        [RubyConstant]
        public const int L = LEFT;
        [RubyConstant]
        public const int R = RIGHT;

        [RubyConstant]
        public const int A = (int)Keys.A;
        [RubyConstant]
        public const int B = (int)Keys.B;
        [RubyConstant]
        public const int C = (int)Keys.C;
        [RubyConstant]
        public const int D = (int)Keys.D;


        [RubyMethodAttribute("update", RubyMethodAttributes.PublicSingleton)]
        public static void Update(object self)
        {
            Input.Update();
        }

        [RubyMethodAttribute("press?", RubyMethodAttributes.PublicSingleton)]
        public static bool IsPress(object self, int num)
        {

           return Input.IsPressed((Keys)num);
        }

        [RubyMethodAttribute("trigger?", RubyMethodAttributes.PublicSingleton)]
        public static bool IsTrigger(object self, int num)
        {
            return Input.IsTrigger((Keys)num);
        }
        [RubyMethodAttribute("repeat?", RubyMethodAttributes.PublicSingleton)]
        public static bool IsRepeat(object self, int num)
        {
            return Input.IsRepeat((Keys)num);
        }

        [RubyMethodAttribute("dir4", RubyMethodAttributes.PublicSingleton)]
        public static int Dir4(object self)
        {
            if (Input.IsPressed(Keys.UP))
                return 8;
            if (Input.IsPressed(Keys.Down))
                return 2;
            if (Input.IsPressed(Keys.LEFT))
                return 4;
            if (Input.IsPressed(Keys.RIGHT))
                return 6;

            return 0;
        }

    }
}
