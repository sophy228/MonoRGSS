using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameRGSSLibrary.Windows.GameEngine;

namespace GameRGSSLibrary.Windows.RGSS
{
    public class Graphics
    {
        public static void Update()
        {
            var game = RGSSEngine.GetGame();
            game.GameControler.TrigerOneFrame();
        }

        public static void Freeze()
        {
            var game = RGSSEngine.GetGame();
            game.GameControler.FreezeFrame();
        }

    }
}
