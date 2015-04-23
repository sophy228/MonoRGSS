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

           RGSSEngine.Init(launchArguments, Windows.UI.Xaml.Window.Current.CoreWindow, this);
          // RGSSEngine.Run(mainLoop);
           re.ReadRPGScript(@"Script\rpgmaker.rb");
            RGSSEngine.Run(re.RunRuby);
#endif
        }

        private int mainLoop()
        {
            GameLibrary.RGSS.Window wd = new GameLibrary.RGSS.Window(10, 10, 500, 200);
            Bitmap bp =  Cache.Face("Actor1");
            wd.Contents.DrawText(100, 30, 200, 20, "莉果大人是我们必要的人才啊！");
            wd.Contents.Blt(0, 0, bp, new Rect(0, 0, 96, 96)); ;
            wd.Oy = 0;
            wd.CursorRect = new Rect(100, 30, 400, 30);
            wd.Contents.DrawText(10, 130, 200, 20, "不愧是莉果sama~！");
            wd.Contents.Blt(300, 120, bp, new Rect(96, 0, 96, 96));
            while(true)
            {
                Graphics.Update();
            }
        }
    }
}
