using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MonoGame.Framework;
using Windows.Foundation;
using Windows.System.Threading;
using Windows.UI.Core;
using Windows.UI.Xaml.Controls;

namespace GameRGSSLibrary.Windows.GameEngine
{
    public delegate int RGSSEntry();
    enum EngineState
    {
        UnInitialized,
        Initialized,
        Runing,
    }
    public class RGSSEngine
    {
        private static RGSSGame game;
        private static RGSSEntry EntryCallback;
        private static EngineState state = EngineState.UnInitialized;
        public static void Init(string launchParameters, CoreWindow window, SwapChainBackgroundPanel swapChainBackgroundPanel)
        {
            if (state != EngineState.UnInitialized)
            {
                game = XamlGame<RGSSGame>.Create(launchParameters, window, swapChainBackgroundPanel);
                game.IsFixedTimeStep = true;
                game.GameControler = (GameControler.CreateControler(game));
            }
            else
                throw new Exception("RGSSEngine has already been initialized");
        }

        public static Task Run(RGSSEntry entry)
        {
            if (state != EngineState.Runing)
            {
                EntryCallback = entry;
                IAsyncAction asyncAction = ThreadPool.RunAsync(Worker, WorkItemPriority.High);
                return asyncAction.AsTask();
            }
            return null;
        }

        public static void Worker(IAsyncAction action)
        {
            EntryCallback();
        }


    }
}
