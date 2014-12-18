using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;
using MonoGame.Framework;
using GameRGSSLibrary.Windows.RGSS;
using GameRGSSLibrary.Windows.GameEngine;
using RGSS.Libraries.RubyGraphics;
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
           RGSSEngine.Run(re.RunRuby);
#endif
        }

        private int mainLoop()
        {
            Graphics.Freeze();
            while(true)
            {
                Graphics.Update();
            }
        }
    }
}
