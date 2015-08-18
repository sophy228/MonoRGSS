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
    [RubyClass("Font", Inherits = typeof(object), Extends = typeof(Font))]
    public static class RubyFont
    {
        [RubyConstructor]
        public static Font CreateFont(RubyClass self, [Optional]String[] name)
        {
            Font font = new Font(name);
            return font;
        }

        [RubyConstructor]
        public static Font CreateFont(RubyClass self, [Optional]String name)
        {
            Font font = new Font(name);
            return font;
        }

        [RubyMethod("name")]
        public static string[] GetName(Font self)
        {
            return self.Name;
        }

        [RubyMethod("name=")]
        public static void SetName(Font self, string name)
        {

            self.Name = new string[] { (string)name };
        }
        [RubyMethod("name=")]
        public static void SetName(Font self, string[] name)
        {

            self.Name = name;

        }

        [RubyMethod("size")]
        public static int GetSize(Font self)
        {
            return self.Size;
        }

        [RubyMethod("size=")]
        public static void SetSize(Font self, int size)
        {
            self.Size = 0;
        }

        [RubyMethod("bold")]
        public static bool GetBold(Font self)
        {
            return self.Bold;
        }

        [RubyMethod("bold=")]
        public static void SetBold(Font self, bool bold)
        {
            self.Bold = bold;
        }

        [RubyMethod("italic")]
        public static bool GetItalic(Font self)
        {
            return self.Italic;
        }

        [RubyMethod("italic=")]
        public static void SetItalic(Font self, bool value)
        {
            self.Italic = value;
        }

        [RubyMethod("shadow")]
        public static bool GetShadow(Font self)
        {
            return self.Shadow;
        }

        [RubyMethod("shadow=")]
        public static void SetShadow(Font self, bool value)
        {
            self.Shadow = value;
        }

        [RubyMethod("color")]
        public static Color GetColor(Font self)
        {
            return self.Color;
        }

        [RubyMethod("color=")]
        public static void SetColor(Font self, Color value)
        {
            self.Color = value;
        }

        [RubyMethod("default_name", RubyMethodAttributes.PublicSingleton)]
        public static string[] GetDefaultName(object self)
        {
            return Font.DefaultName;
        }

        [RubyMethod("default_name=", RubyMethodAttributes.PublicSingleton)]
        public static void SetDefaultName(RubyClass self, RubyArray name)
        {
            string[] names = new string[name.Count];
            int i = 0;
            foreach(var s in name)
            {
                names[i++] = self.Context.DecodePath((MutableString)s);
            }
            
             Font.DefaultName = names;
        }

    }
}
