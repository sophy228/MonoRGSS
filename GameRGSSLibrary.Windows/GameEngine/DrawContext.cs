using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameRGSSLibrary.Windows.GameEngine
{
    public abstract class DrawContext
    {
        private DrawManager _drawMagager;
        public DrawContext(DrawManager drawManager)
        {
            _drawMagager = drawManager;
        }
        public DrawContext()
        {

        }
        virtual public void Draw(int frameCount)
        {
            
        }
    }
}
