using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class Font
    {
        private SpriteFont spriteFont;

        public  string[] Name;

        public  int Size = 20;

        public  bool Bold = false;

        public  bool Italic = false;

        public  bool Shadow = false;

        public  Color Color = new Color(255, 255, 255);

        public Font(string[] names=null)
        {
            if (names == null)
                Name = DefaultName;
            else
                Name = names;
            Size = DefaultSize;
            Bold = DefaultBold;
            Italic = DefaultItalic;
            Shadow = DefaultShadow;
            Color = DefaultColor;
        }

        public Font(string names = null)
        {
            if (names == null)
                Name = DefaultName;
            else
                Name = new string[]{names};
            Size = DefaultSize;
            Bold = DefaultBold;
            Italic = DefaultItalic;
            Shadow = DefaultShadow;
            Color = DefaultColor;
        }

        public static string[] DefaultName;

        public static int DefaultSize = 20;

        public static bool DefaultBold = false;

        public static bool DefaultItalic = false;

        public static bool DefaultShadow = false;

        public static Color DefaultColor = new Color(255,255,255);

        private string GenerateFontPath(string name)
        {
            string style="";
            if (!Bold && !Italic)
                style = "Regular";
            else if (Bold && Italic)
                style = "BoldItalic";
            else if (Bold)
                style = "Bold";
            else if (Italic)
                style = "Italic";
            return string.Format("{0}_{1}", name, style);
        }
        public SpriteFont ToXnaFont()
        {
            var drm = RGSSEngine.GetDrawManager();
            if (Name == null)
                spriteFont = drm.Content.Load<SpriteFont>("Font\\default");
            else
            {
                foreach (var name in Name)
                {
                    try
                    {
                        spriteFont = drm.Content.Load<SpriteFont>("Font\\" + GenerateFontPath(name));
                    }
                    catch(Exception ex)
                    {
                        continue;
                    }
                    break;
                }
                if (spriteFont == null)
                    spriteFont = drm.Content.Load<SpriteFont>("Font\\default");
            }

            return spriteFont;
        }

    }
}
