using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;

namespace GameLibrary.GameEngine
{
    public enum GameState
    {
        Freezed,
        Runging,
        Pending,
        Transition
    }
    public class GameControler
    {
        private static GameControler _gameControler;
        private RGSSGame _game;
        public GameState _gameState;
        public AutoResetEvent DrawOneFrameCompleted;
        public AutoResetEvent TansitionCompleted;
        private readonly int _frameRate;
        private int _frameCount;
        Stopwatch _gameTimer;
        private double lastTime;
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
            GameState = GameState.Pending;
            DrawOneFrameCompleted = new AutoResetEvent(false);
            TansitionCompleted = new AutoResetEvent(false);
            _frameRate = 30;
            FrameCount = 0;
          //  _gameTimer = Stopwatch.StartNew();
            lastTime = 0;
        }

        public static GameControler CreateControler(RGSSGame game)
        {
            _gameControler = new GameControler(game);
            return _gameControler;
        }

        public void TrigerOneFrame()
        {
            if (_gameState != GameState.Freezed)
            {
                _gameState = GameState.Runging;
                _game.DrawManager.UpdateContext(FrameCount);
               // double before = _gameTimer.Elapsed.TotalMilliseconds;
              //  double after = _gameTimer.Elapsed.TotalMilliseconds;
              //  Debug.WriteLine("befor " + before + " after " + after);
              // DrawOneFrameCompleted.Set();
                
                
                
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
               // Debug.WriteLine("triger @" + elapsedTicks);
            }
        }

        public void FreezeFrame()
        {
            if (_gameState != GameEngine.GameState.Freezed)
            {
                _gameState = GameState.Freezed;
                _game.DrawManager.FreezeContext(FrameCount);
            }
        }

        public void Transition(int duration, string name, int vague)
        {
            if (_gameState == GameState.Freezed)
            {
                _gameState = GameState.Transition;
                _game.DrawManager.TransitionContext(duration, name, vague);
            }
        }
    }
}
