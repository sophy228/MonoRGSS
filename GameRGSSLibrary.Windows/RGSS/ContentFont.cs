using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class ContentFont
    {
        public SpriteFont font;
        public Color color;
        public ContentFont(SpriteFont ft)
        {
            font = ft;
            color = Color.FormXnaColor(Microsoft.Xna.Framework.Color.White);
        }

    };
}
