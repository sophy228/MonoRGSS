using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameRGSSLibrary.Windows.GameTest;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameRGSSLibrary.Windows.GameEngine
{
    public class RGSSGame:Game
    {
       // GraphicsDeviceManager graphics;
       // SpriteBatch spriteBatch;
        GameControler _gameControler;
        DrawManager _drawManager;
        public RGSSGame()
        {
           // graphics = new GraphicsDeviceManager(this);
            _drawManager = new DrawManager(this);
            Content.RootDirectory = "Content";
        }

        public GameControler GameControler
        {
            get
            {
                return _gameControler;
            }
            set
            {
                _gameControler = value;
            }
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
        {
            // TODO: Add your initialization logic here

            base.Initialize();
        }

        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
           // spriteBatch = new SpriteBatch(GraphicsDevice);
            
            // TODO: use this.Content to load your game content here
            _drawManager.LoadContent();
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// all content.
        /// </summary>
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
            _drawManager.UnLoadContent();
        }

        /// <summary>
        /// Allows the game to run logic such as updating the world,
        /// checking for collisions, gathering input, and playing audio.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Update(GameTime gameTime)
        {
            // TODO: Add your update logic here

            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {

            Debug.WriteLine("draw @" + gameTime.ElapsedGameTime.TotalMilliseconds);
            // TODO: Add your drawing code here
            switch(_gameControler.GameState)
            {
                case GameState.Freezed:
                    break;
                case GameState.Runging:
                    //drawing context;
                    GraphicsDevice.Clear(Color.CornflowerBlue);
                    _drawManager.Draw(_gameControler.FrameCount);
                    _gameControler.DrawOneFrameCompleted.Set();
                    base.Draw(gameTime);
                    break;
                case GameState.Pending:
                    break;
                case GameState.Transacting:
                    _gameControler.DrawOneFrameCompleted.Set();
                    break;
                default:
                    break;
            }
            
        }
    }
}
