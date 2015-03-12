using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using RGSS.Libraries;
using GameLibrary.GameEngine;
using GameLibrary.RGSS;
using Microsoft.Xna.Framework;
using GameLibrary.GameTest;
// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace GameRGSS
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class GamePage : SwapChainBackgroundPanel
    {
        readonly Game1 _game;

        public GamePage(string launchArguments)
        {
            this.InitializeComponent();

            // Create the game.
#if false
           _game = XamlGame<Game1>.Create(launchArguments, Window.Current.CoreWindow, this);
           _game.IsFixedTimeStep = true;
#else
           RubyEngine re = new RubyEngine();
           RGSSEngine.Init(launchArguments, Window.Current.CoreWindow, this);
           //RGSSEngine.Run(mainLoop);
           RGSSEngine.Run(re.RunRuby);
#endif
        }

        private int mainLoop()
        {
            Viewport vp1 = ViewportFactory.Create(0, 0, 520, 240);
            Viewport vp2 = ViewportFactory.Create(0, 0, 200, 300);
            vp1.Z = 20;
            vp2.Z = 30;
            Bitmap bitmap = new Bitmap(100, 100);
            bitmap.FillRect(0, 0, 100, 100, new GameLibrary.RGSS.Color(255,0,0,255));
            Bitmap bitmap2 = new Bitmap(100, 100);
            bitmap2.FillRect(0, 0, 100, 100, new GameLibrary.RGSS.Color(0, 255, 0, 255));
            SpriteTest sp1 = new SpriteTest(vp1);
            bitmap.Blt(50, 0, bitmap2, new Rect(0, 0, 50, 50),0);
            sp1.Bitmap = bitmap;
            Sprite sp2 = SpriteFactory.Create(vp2);
            Graphics.Freeze();
            while(true)
            {
                Graphics.Update();
                sp1.Update();
                
            }
        }
    }
}
