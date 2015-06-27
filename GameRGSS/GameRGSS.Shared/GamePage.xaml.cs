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
        private bool isNative;

        public GamePage(string launchArguments)
        {
            this.InitializeComponent();
           // isNative = true;
            // Create the game.
#if false
           _game = XamlGame<Game1>.Create(launchArguments, Window.Current.CoreWindow, this);
           _game.IsFixedTimeStep = true;
#else
           RubyEngine re = new RubyEngine();

           RGSSEngine.Init(launchArguments, Windows.UI.Xaml.Window.Current.CoreWindow, this);
           if (isNative)
           {
               RGSSEngine.Run(mainLoop);
           }
           else
           {
               re.ReadRPGScript(@"Script\rpgmaker.rb");
               RGSSEngine.Run(re.RunRuby);
           }
#endif
        }

        private int mainLoop()
        {
            Table mapdata = new Table(17, 16, 3);
            for (int i = 0; i < 17; i++)
                for (int j = 0; j < 16;j++ )
                {
                    mapdata[i, j, 0] = 2816 + j;
                }
            Tilemap tilemap = new Tilemap();
            tilemap.MapData = mapdata;
            tilemap.Bitmaps[0] = Cache.System("TileA1");
            tilemap.Bitmaps[1] = Cache.System("TileA2");
            while(true)
            {
                tilemap.Update();
                Graphics.Update();
            }
                    return 0;
        }
    }
}
