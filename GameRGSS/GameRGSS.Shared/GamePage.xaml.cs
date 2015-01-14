﻿using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using RGSS.Libraries;
using GameLibrary.GameEngine;
using GameLibrary.RGSS;
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
            Sprite sp1 = SpriteFactory.Create(vp1);
            Sprite sp2 = SpriteFactory.Create(vp2);
            Graphics.Freeze();
            while(true)
            {
                Graphics.Update();
            }
        }
    }
}
