using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.GameEngine
{
    public class DrawManager
    {
        private readonly GraphicsDeviceManager _graphicsDeviceManager;
        private  GraphicsDevice _graphicsDevice;
        private  SpriteBatch _spritBatch;
        private DrawContext _currentdrawContext;
        private RGSSContent _rgssContent;
        private readonly Game _game;
        public DrawManager(Game game)
        {
            _game = game;
            _graphicsDeviceManager = new GraphicsDeviceManager(game);
            
           
        }
        public GraphicsDevice GraphicsDevice
        {
            get
            {
                return _graphicsDevice;
            }
        }

        public GraphicsDeviceManager GraphicsDeviceManager
        {
            get
            {
                return _graphicsDeviceManager;
            }
        }

        public DrawContext CurrentDrawContext
        {
            get
            {
                return _currentdrawContext;
            }
        }

        public RGSSContent Content
        {
            get
            {
                return _rgssContent;
            }
        }

        public SpriteBatch SpriteBatch
        {
            get
            {
                return _spritBatch;
            }
        }

        public Microsoft.Xna.Framework.Graphics.Viewport DefaultViewport
        {
            get;
           private set;
        }

        public  void LoadContent()
        {
            _rgssContent = new RGSSContent(_game.Content);
            _rgssContent.LoadContent();
            _graphicsDevice = _game.GraphicsDevice;
            _spritBatch = new SpriteBatch(_graphicsDevice);
            DefaultViewport = _graphicsDevice.Viewport;
            _currentdrawContext = new RGSSDrawContext(this);
            
        }

        public void UnLoadContent()
        {

        }

        public void Blend(int frameCount)
        {
            _currentdrawContext.PreBlend(frameCount);
        }
        
        public void Draw(int frameCount)
        {
           
            _currentdrawContext.Draw(frameCount);
            
        }

        public Texture2D SnapToTexture(int frameCount)
        {
            //Blend(frameCount);
            int w, h;
            w = _currentdrawContext.DefaultWindowRect.Width;
            h = _currentdrawContext.DefaultWindowRect.Height;
            RenderTarget2D screenshot;
            //screenshot = new RenderTarget2D(GraphicsDevice, w, h, false, SurfaceFormat.Bgra32, DepthFormat.None);
            screenshot = new RenderTarget2D(GraphicsDevice, w, h, false, SurfaceFormat.Color, DepthFormat.None, 100, RenderTargetUsage.PreserveContents);
            lock (this)
            {
                _currentdrawContext.Draw(frameCount);
                _graphicsDevice.SetRenderTarget(screenshot);
                _graphicsDevice.Clear(Microsoft.Xna.Framework.Color.Red);
                SpriteBatch.Begin(SpriteSortMode.Immediate, BlendState.AlphaBlend);
                SpriteBatch.Draw(_currentdrawContext.RenderTarget, new Rectangle(0, 0, w, h), Microsoft.Xna.Framework.Color.White);
                SpriteBatch.End();
                _graphicsDevice.Present();
                _graphicsDevice.SetRenderTarget(null);
            }
            return screenshot;
        }
    }
}
