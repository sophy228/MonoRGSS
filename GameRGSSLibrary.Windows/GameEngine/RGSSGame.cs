using System;
using System.Diagnostics;
using GameLibrary.RGSS;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input.Touch;
using RPGVXLibrary.Input;

namespace GameLibrary.GameEngine
{
    public class RGSSGame:Game
    {
       // GraphicsDeviceManager graphics;
       // SpriteBatch spriteBatch;
        GameControler _gameControler;
        DrawManager _drawManager;
        private double comptime;
        private DataBase database;
        public RGSSGame()
        {
           // graphics = new GraphicsDeviceManager(this);
            _drawManager = new DrawManager(this);
            database = new DataBase();
            Content.RootDirectory = "Content";
            database.RootDir = "";
            TouchPanel.EnabledGestures = GestureType.Tap | GestureType.VerticalDrag;
        }

        public DrawManager DrawManager
        {
            get
            {
                return _drawManager;
            }
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

        public DataBase RGSSData
        {
            get
            {
                return database;
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
           // Input.Update();

            base.Update(gameTime);
            if (_drawManager.FrameEmpty)
            {
                this.SuppressDraw();
                comptime += gameTime.ElapsedGameTime.TotalSeconds;
                _drawManager.DrawPaused = true;
                if (_gameControler.GameState == GameState.Freezed)
                    _drawManager.DrawPausedEvent.Set();
            }
            else
            {
                _drawManager.DrawPaused = false;
            }
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {


            // TODO: Add your drawing code here
            _drawManager.Draw();

        
            lock (_drawManager)
            {
                
                float frameRate = 1 / ((float)gameTime.ElapsedGameTime.TotalSeconds + (float)comptime);
                _drawManager.SpriteBatch.Begin(
                   SpriteSortMode.Deferred,
                   BlendState.AlphaBlend);
                _drawManager.SpriteBatch.DrawString(new Font("黑体").ToXnaFont(), frameRate.ToString(), new Vector2(10, 10), Microsoft.Xna.Framework.Color.White);
               
               // _drawManager.SpriteBatch.Draw(stickBallTexture, stickBallTexture.Bounds, Microsoft.Xna.Framework.Color.White);
                _drawManager.SpriteBatch.End();
                comptime = 0;
                Input.Draw(_drawManager, _gameControler.FrameCount);
                base.Draw(gameTime);
            }
           
         }
    }
}
