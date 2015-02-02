using GameLibrary.GameEngine;

namespace GameLibrary.RGSS
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

        public static int FrameCount
        {
            get
            {
                var game = RGSSEngine.GetGame();
                return game.GameControler.FrameCount;
            }
        }

    }
}
