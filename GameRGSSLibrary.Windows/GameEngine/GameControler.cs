using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;

namespace GameRGSSLibrary.Windows.GameEngine
{
    public enum GameState
    {
        Freezed,
        Runging,
        Pending,
        Transacting
    }
    public class GameControler
    {
        private static GameControler _gameControler;
        private RGSSGame _game;
        public GameState _gameState;
        public AutoResetEvent DrawOneFrameCompleted;
        private readonly int _frameRate;
        private int _frameCount;
        private GameControler()
        {

        }

        public GameState GameState
        {
            get
            {
                return _gameState;
            }
            set
            {
                _gameState = value;
            }
        }

        public int FrameRate
        {
            get
            {
                return _frameRate;
            }
        }

        public int FrameCount
        {
            get
            {
                return _frameCount;
            }
            private set
            {
                _frameCount = value;
            }
        }

        private GameControler(RGSSGame game)
        {
            _game = game;
            GameState = GameState.Freezed;
            DrawOneFrameCompleted = new AutoResetEvent(false);
            _frameRate = 30;
            FrameCount = 0;
        }

        public static GameControler CreateControler(RGSSGame game)
        {
            _gameControler = new GameControler(game);
            return _gameControler;
        }

        public void TrigerOneFrame()
        {
           // if (_gameState != GameState.Freezed)
            {
                _gameState = GameState.Runging;
                Stopwatch _gameTimer = Stopwatch.StartNew();
                DrawOneFrameCompleted.WaitOne();
                long elapsedTicks = _gameTimer.Elapsed.Ticks;
                _gameState = GameState.Pending;
                
#if false
                double waitmills = _gameTimer.Elapsed.TotalMilliseconds - 1000f / FrameRate;
                if (waitmills < 0)
                {
                    TimeSpan extrawait = TimeSpan.FromMilliseconds(-waitmills);
                    Task.Delay(extrawait).Wait();
                }
                else
                {
                    Debug.WriteLine("OverHead " + TimeSpan.FromTicks(elapsedTicks - 333334).ToString());
                }
#endif
                FrameCount++;
                Debug.WriteLine("triger @" + elapsedTicks);
            }
        }

        public void FreezeFrame()
        {
            _gameState = GameState.Freezed;
        }
    }
}
