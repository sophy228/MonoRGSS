using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace GameRGSSLibrary.Windows.GameEngine
{
    public enum GameState
    {
        Freezed,
        Runging,
        Transacting
    }
    public class GameControler
    {
        private static GameControler _gameControler;
        private RGSSGame _game;
        public GameState _gameState;
        public AutoResetEvent DrawOneFrameCompleted;

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
        private GameControler(RGSSGame game)
        {
            _game = game;
            GameState = GameState.Freezed;
            DrawOneFrameCompleted = new AutoResetEvent(false);
        }

        public static GameControler CreateControler(RGSSGame game)
        {
            _gameControler = new GameControler(game);
            return _gameControler;
        }

        public void TrigerOneFrame()
        {
            _gameState = GameState.Runging;
            Stopwatch _gameTimer = Stopwatch.StartNew();
            DrawOneFrameCompleted.WaitOne();
            _gameState = GameState.Freezed;
            long elapsedTicks = _gameTimer.Elapsed.Ticks;
            if (1666667 > elapsedTicks)
            {
                TimeSpan extrawait = TimeSpan.FromTicks(1666667 - elapsedTicks);
                Task.Delay(extrawait).Wait();
            }
            else
            {
                //Debug.WriteLine("OverHead " + TimeSpan.FromTicks(elapsedTicks - 333334).ToString());
            }
            Debug.WriteLine("triger @" + _gameTimer.Elapsed.Ticks + "@" + _gameTimer.Elapsed.TotalMilliseconds);
        }
    }
}
