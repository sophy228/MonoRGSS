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

        public static void Transition(int duration, string path = null, int vague = 0)
        {
            var game = RGSSEngine.GetGame();
            game.GameControler.Transition(duration,path,vague);
        }

        public static int FrameCount
        {
            get
            {
                var game = RGSSEngine.GetGame();
                return game.GameControler.FrameCount;
            }
        }

        public static Bitmap SnapToBitmap()
        {
            var game = RGSSEngine.GetGame();
            var texture =  game.DrawManager.SnapToTexture(game.GameControler.FrameCount);
            Bitmap bitmap = new Bitmap(texture);
            return bitmap;
        }

        public static int Width
        {
            get
            {
                var game = RGSSEngine.GetGame();
                return game.GraphicsDevice.PresentationParameters.BackBufferWidth;
            }
        }

        public static int Height
        {
            get
            {
                var game = RGSSEngine.GetGame();
                return game.GraphicsDevice.PresentationParameters.BackBufferHeight;
            }
        }

        public static float Brightness
        {
            get
            {
                var game = RGSSEngine.GetGame();
                return game.DrawManager.Brightness;
            }
            set
            {
                var game = RGSSEngine.GetGame();
                game.DrawManager.Brightness = value;
            }
        }

    }
}
