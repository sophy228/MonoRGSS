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

        public  void LoadContent()
        {
            _rgssContent = new RGSSContent(_game.Content);
            _rgssContent.LoadContent();
            _graphicsDevice = _game.GraphicsDevice;
            _spritBatch = new SpriteBatch(_graphicsDevice);
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
            _spritBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
            _currentdrawContext.Draw(frameCount);
            _spritBatch.End();
        }

        public Texture2D SnapToTexture(int frameCount)
        {
            Blend(frameCount);
            int w, h;
            w = GraphicsDevice.PresentationParameters.BackBufferWidth;
            h = GraphicsDevice.PresentationParameters.BackBufferHeight;
            RenderTarget2D screenshot;
            screenshot = new RenderTarget2D(GraphicsDevice, w, h, false, SurfaceFormat.Bgra32, DepthFormat.None);
            _graphicsDevice.SetRenderTarget(screenshot);
            Draw(frameCount);
            _graphicsDevice.Present();
            _graphicsDevice.SetRenderTarget(null);
            return screenshot;
        }
    }
}
