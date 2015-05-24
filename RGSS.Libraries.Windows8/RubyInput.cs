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

    }
}
