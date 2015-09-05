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

namespace GameLibrary.GameEngine
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
            if (state == EngineState.UnInitialized)
            {
                game = XamlGame<RGSSGame>.Create(launchParameters, window, swapChainBackgroundPanel);
              // game.IsFixedTimeStep = true;
              // game.TargetElapsedTime = TimeSpan.FromSeconds(1f/50f);
                game.GameControler = (GameControler.CreateControler(game));
                state = EngineState.Initialized;
            }
            else
                throw new Exception("RGSSEngine has already been initialized");
        }

       
        public static Task Run(RGSSEntry entry)
        {
            if (state != EngineState.Runing)
            {
                EntryCallback = entry;
                IAsyncAction asyncAction = ThreadPool.RunAsync(Worker, WorkItemPriority.Normal);
                return asyncAction.AsTask();
            }
            return null;
        }

        public static void Worker(IAsyncAction action)
        {
            EntryCallback();
        }

        public static RGSSGame GetGame()
        {
            if (state == EngineState.Initialized)
                return game;
            else
                throw new Exception("RGSSEngine has not been initialized");
        }

        public static DrawManager GetDrawManager()
        {
            if (state == EngineState.Initialized)
                return game.DrawManager;
            else
                throw new Exception("RGSSEngine has not been initialized");
        }
    }
}
