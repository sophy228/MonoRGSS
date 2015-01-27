
using System.Runtime.InteropServices;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;
namespace RGSS.Libraries.Builtins
{
    [RubyClass("Sprite", Inherits = typeof(object), Extends = typeof(Sprite))]
    public static class RubySpriteOps
    {
        [RubyConstructor]
        public static Sprite CreateSprite(RubyClass self, [Optional]Viewport viewport)
        {
            Sprite sp = SpriteFactory.Create(viewport);
            return sp;
        }
        [RubyMethod("z")]
        public static int GetZ(Sprite self)
        {
            return self.Z;
        }
        [RubyMethod("z=")]
        public static int SetZ(Sprite self, int z)
        {
            self.Z = z;
            return z;
        }
    }
}
