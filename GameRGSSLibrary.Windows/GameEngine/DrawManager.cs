﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
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
        private float transDuraiton;
        private float totalDuration;
        private string transFile;
        private bool fullScreen;
        public ManualResetEvent DrawPausedEvent;
        public bool DrawPaused;

        public DrawManager(Game game)
        {
            _game = game;
            _graphicsDeviceManager = new GraphicsDeviceManager(game);
            fullScreen = true;
            DrawPausedEvent = new ManualResetEvent(false);
            _graphicsDeviceManager.PreparingDeviceSettings += _graphicsDeviceManager_PreparingDeviceSettings;
            
        }

        void _graphicsDeviceManager_PreparingDeviceSettings(object sender, PreparingDeviceSettingsEventArgs e)
        {
            e.GraphicsDeviceInformation.PresentationParameters.RenderTargetUsage = RenderTargetUsage.PreserveContents;
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

        public bool FullScreen
        {
            get
            {
                return fullScreen;
            }
            set
            {
                fullScreen = value;
            }
        }

        public Microsoft.Xna.Framework.Graphics.Viewport DefaultViewport
        {
            get;
           private set;
        }

        public float Brightness
        {
            get
            {
                return _currentdrawContext.Brightness;
            }
            set
            {
                _currentdrawContext.Brightness = value;
            }
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
        
      

        public void UpdateContext(int frameCount)
        {
            _currentdrawContext.Update(frameCount);
        }
        public void FreezeContext(int frameCount)
        {
            _currentdrawContext.Freeze(frameCount);
        }
        public void TransitionContext(int duration, string path, int vague)
        {
            _currentdrawContext.Transition(duration, path, vague);
        }

        public void Draw()
        {
            _currentdrawContext.Draw();
        }

        /*
         public void DrawFreeze()
         {
             _currentdrawContext.DrawFreeze();
         }
         public void BeginTransition(int duration, string path, int vague)
         {
             totalDuration = transDuraiton = duration;
             transFile = path;
         }
         * public bool DrawTransition()
         {
             if (transDuraiton != 0)
             {
                _currentdrawContext.DrawTransition(transDuraiton / totalDuration, transFile);
                transDuraiton--;
                return true;
             }
             else
             {
                 totalDuration = 0;
                 transFile = null;
                 return false;
             }
            
         }
         * */

        public bool FrameEmpty
        {
            get
            {
                return _currentdrawContext.FrameEmpty;
            }
        }

        

        public Texture2D SnapToTexture(int frameCount)
        {
         //   Blend(frameCount);
            var screenshot = _currentdrawContext.SnapShot(frameCount);
            return screenshot;
        }
    }
}
