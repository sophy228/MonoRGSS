using GameLibrary.RGSS;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.GameEngine
{
    public abstract class DrawContext
    {
        protected DrawManager _drawMagager;

        private GameLibrary.RGSS.Viewport _viewportHeader;

        private Rect _defalutWindowRect;
        private RenderTarget2D[] renderBackbuffer;
        private Texture2D blackTexture;

        private int currentRenderIndex;
        private Effect transionEffect;
        private Effect brightEffect;

        private FrameBuffer frameBuffer;
        private const int FrameBuffSize = 4;
        private Frame freezeFrame;

        public DrawContext(DrawManager drawManager)
        {
            _drawMagager = drawManager;
            _defalutWindowRect = new Rect(0, 0, 544, 416);
            _viewportHeader = new GameLibrary.RGSS.Viewport(this, _defalutWindowRect);
            _viewportHeader.selfManaged = true;
            renderBackbuffer = new RenderTarget2D[1];
            renderBackbuffer[0] = new RenderTarget2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height, false, SurfaceFormat.Color, DepthFormat.None, 0, RenderTargetUsage.PreserveContents);
          
            currentRenderIndex = 0;
            CreatePureBlackTexture();
            Brightness = 255;
            transionEffect = _drawMagager.Content.Load<Effect>("Effect\\TransitionEffect");
            frameBuffer = new FrameBuffer(this, FrameBuffSize);
        }
        public DrawContext()
        {

        }

        public float Brightness
        {
            get;
            set;
        }

        public GameLibrary.RGSS.Viewport FindSelfManagedViewport()
        {
            GameLibrary.RGSS.Viewport viewport = null;
            lock (ViewPortHeaer)
            {
                foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
                {
                    if(vp.Z > 0)
                    {
                        var vppre = (GameLibrary.RGSS.Viewport)vp.Prev;
                        if (vppre.selfManaged == true)
                        {
                            viewport = vppre;
                            break;
                        }
                    }
                }
                if (viewport == null)
                {
                    viewport = ViewportFactory.Create(_defalutWindowRect);
                    viewport.selfManaged = true;
                }
            }
            return viewport;
        }

        public Texture2D SnapShot(int frameCount)
        {
            int w = this.DefaultWindowRect.Width;
            int h = this.DefaultWindowRect.Height;
            RenderTarget2D screenshot;
            Update();
            Frame frame = frameBuffer.GetRenderFrame();
            lock (_drawMagager)
            {
                _drawMagager.GraphicsDevice.SetRenderTarget(RenderTarget);
                _drawMagager.SpriteBatch.Begin(
                       SpriteSortMode.Immediate,
                       BlendState.AlphaBlend);
                _drawMagager.SpriteBatch.Draw(frame.RenderTexture, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
                _drawMagager.GraphicsDevice.SetRenderTarget(null);
            }
            frameBuffer.ReleaseFrame(frame);
            //screenshot = new RenderTarget2D(GraphicsDevice, w, h, false, SurfaceFormat.Bgra32, DepthFormat.None);
            screenshot = new RenderTarget2D(_drawMagager.GraphicsDevice, w, h, false, SurfaceFormat.Color, DepthFormat.None, 0, RenderTargetUsage.PreserveContents);
            lock (_drawMagager)
            {
                _drawMagager.GraphicsDevice.SetRenderTarget(screenshot);
                _drawMagager.GraphicsDevice.Clear(Microsoft.Xna.Framework.Color.Black);
                _drawMagager.SpriteBatch.Begin(
                       SpriteSortMode.Immediate,
                       BlendState.AlphaBlend);
                _drawMagager.SpriteBatch.Draw(RenderTarget, RenderTarget.Bounds, Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
                _drawMagager.GraphicsDevice.SetRenderTarget(null);
            }
            return screenshot;
        }

        public void Update(int frameCount=0) //in Rgss thread
        {
            Frame frame = frameBuffer.AllocateFrame();
            bool needRecall = false;
            lock(_drawMagager)
            { 
                _drawMagager.GraphicsDevice.SetRenderTarget(frame.RenderTexture);
                _drawMagager.GraphicsDevice.Clear(Microsoft.Xna.Framework.Color.Black);
                _viewportHeader.Draw(_drawMagager, frameCount);
                
                foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
                {
                    vp.drawCount = 0;
                    vp.Draw(_drawMagager, frameCount,255,1);
                }
                foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
                {
                    vp.Draw(_drawMagager, frameCount, 255, 2);
                    if (!needRecall)
                    {
                        if (vp.selfManaged && vp.drawCount == 0)
                            needRecall = true;
                    }
                }
               // _drawMagager.GraphicsDevice.SetRenderTarget(null);
            }
            frameBuffer.ReturnFrame(frame);
            if (needRecall)
                RecallViewport();
        }

        public void Freeze(int frameCount=0) //in Rgss thread
        {
            if (!_drawMagager.DrawPaused)
              {
                  _drawMagager.DrawPausedEvent.Reset();
                  _drawMagager.DrawPausedEvent.WaitOne();
              }
        }

        public bool FrameEmpty
        {
            get
            {
                return frameBuffer.IsEmpty;
            }
        }

        public void Transition(int duration, string filename, int vague) //in Rgss thread
        {
            for(int i = 0; i < duration; i++)
            {
              //  float fFadeAmount = (float) (duration -i -1) / (float)(duration -i);
                float fFadeAmount = 1 - (float)i / (float)duration;
                Frame frame = frameBuffer.AllocateFrame();
                lock(_drawMagager)
                { 
                    _drawMagager.GraphicsDevice.SetRenderTarget(frame.RenderTexture);
                    Effect effect = transionEffect;
                    if (filename == null)
                        effect.Parameters["nullTex"].SetValue(true);
                    else
                    {
                        filename = filename.Replace("/", "\\");
                        Texture2D tex = _drawMagager.Content.Load<Texture2D>(filename);
                        effect.Parameters["ColorMap2"].SetValue(tex);
                        effect.Parameters["nullTex"].SetValue(false);
                    }

                    effect.Parameters["fFadeAmount"].SetValue(fFadeAmount);
                    effect.Parameters["vague"].SetValue(0.4f);
                    _drawMagager.SpriteBatch.Begin(SpriteSortMode.Immediate, BlendState.AlphaBlend,
             SamplerState.LinearClamp, DepthStencilState.Default,
             RasterizerState.CullNone, effect);
                    _drawMagager.SpriteBatch.Draw(RenderTarget, RenderTarget.Bounds, Microsoft.Xna.Framework.Color.White);
                    _drawMagager.SpriteBatch.End();
                    _drawMagager.GraphicsDevice.SetRenderTarget(null);
                }
                frameBuffer.ReturnFrame(frame);
            }
        }


        private void CreatePureBlackTexture()
        {
            blackTexture = new Texture2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height);
            int size = blackTexture.Width * blackTexture.Height;
            Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
            for (int i = 0; i < size; i++)
                data[i] = Microsoft.Xna.Framework.Color.Gray;
            blackTexture.SetData<Microsoft.Xna.Framework.Color>(0, blackTexture.Bounds, data, 0, size);
        }

      
        /*public void DrawTransition(float fFadeAmount, string filename = null)
        {
            _drawMagager.GraphicsDevice.SetRenderTarget(renderBackbuffer[(currentRenderIndex + 1)%2]);
            Effect effect = transionEffect;
            if (filename == null)
                effect.Parameters["nullTex"].SetValue(true);
            else
            {
                filename = filename.Replace("/", "\\");
                Texture2D tex = _drawMagager.Content.Load<Texture2D>(filename);
                effect.Parameters["ColorMap2"].SetValue(tex);
                effect.Parameters["nullTex"].SetValue(false);
            }

            effect.Parameters["fFadeAmount"].SetValue(fFadeAmount);
            effect.Parameters["vague"].SetValue(0.4f);
            _drawMagager.SpriteBatch.Begin(SpriteSortMode.Immediate, BlendState.AlphaBlend,
     SamplerState.LinearClamp, DepthStencilState.Default,
     RasterizerState.CullNone, effect);
                _drawMagager.SpriteBatch.Draw(renderBackbuffer[currentRenderIndex], RenderTarget.Bounds, Microsoft.Xna.Framework.Color.White);
            _drawMagager.SpriteBatch.End();
            currentRenderIndex = (currentRenderIndex + 1) % 2;
            
            _drawMagager.GraphicsDevice.SetRenderTarget(null);
            _drawMagager.SpriteBatch.Begin(
                    SpriteSortMode.Immediate,
                    BlendState.AlphaBlend);
           if(_drawMagager.FullScreen)
             _drawMagager.SpriteBatch.Draw(RenderTarget, _drawMagager.GraphicsDevice.PresentationParameters.Bounds, _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
           else
             _drawMagager.SpriteBatch.Draw(RenderTarget, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
            _drawMagager.SpriteBatch.End();
        }
        */
        private void RecallViewport()
        {
            GameLibrary.RGSS.Viewport vp;
            for (vp = (GameLibrary.RGSS.Viewport)ViewPortHeaer.Next; vp != ViewPortHeaer; )
            {
               
                    GameLibrary.RGSS.Viewport tmp = (GameLibrary.RGSS.Viewport)vp.Next;
                    if (vp.selfManaged && vp.drawCount == 0)
                    {
                        vp.Prev.Next = tmp;
                        tmp.Prev = vp.Prev;
                        vp.Dispose();
                    }
                    vp = tmp;
            }
        }

        virtual public void Draw()
        {
          
            /*bool needRecall = false;
            _drawMagager.GraphicsDevice.SetRenderTarget(RenderTarget);
            _drawMagager.GraphicsDevice.Clear(Microsoft.Xna.Framework.Color.Black);
            _viewportHeader.Draw(_drawMagager, frameCount);
            foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
            {
                vp.Draw(_drawMagager, frameCount);
                if(!needRecall)
                {
                    if (vp.selfManaged && vp.drawCount == 0)
                        needRecall = true;
                }
             }
           if(needRecall)
            RecallViewport();
            _drawMagager.GraphicsDevice.SetRenderTarget(null);
             * */
            Frame frame = frameBuffer.GetRenderFrame();
            lock (_drawMagager)
            {
                _drawMagager.GraphicsDevice.SetRenderTarget(RenderTarget);
                _drawMagager.SpriteBatch.Begin(
                       SpriteSortMode.Immediate,
                       BlendState.AlphaBlend);
                _drawMagager.SpriteBatch.Draw(frame.RenderTexture, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
                _drawMagager.GraphicsDevice.SetRenderTarget(null);


                _drawMagager.SpriteBatch.Begin(
                       SpriteSortMode.Immediate,
                       BlendState.AlphaBlend);
                if (_drawMagager.FullScreen)
                    _drawMagager.SpriteBatch.Draw(frame.RenderTexture, _drawMagager.GraphicsDevice.PresentationParameters.Bounds, _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                else
                    _drawMagager.SpriteBatch.Draw(frame.RenderTexture, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
            }
            frameBuffer.ReleaseFrame(frame);
        }

   /*
        public void DrawFreeze()
        {
            if (RenderTarget != null)
            {
                _drawMagager.SpriteBatch.Begin(
                       SpriteSortMode.Immediate,
                       BlendState.AlphaBlend);
                _drawMagager.SpriteBatch.Draw(RenderTarget, _drawMagager.GraphicsDevice.PresentationParameters.Bounds, _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                // _drawMagager.SpriteBatch.Draw(renderTarget, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
            }
        }

        internal void DrawTransition(string path, float p)
        {

        }
        */
        virtual public void PreBlend(int frameCount)
        {
            _viewportHeader.PreBlend(_drawMagager, frameCount);
            foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
            {
                vp.PreBlend(_drawMagager, frameCount);
            }
        }
        virtual public void AddSprit(GameLibrary.RGSS.Viewport viewport, Sprite sprite)
        {

        }

        public DrawManager DrawManager
        {
            get
            {
                return _drawMagager;
            }
        }

        public RenderTarget2D RenderTarget
        {
            get
            {
                return renderBackbuffer[currentRenderIndex];
            }
        }

        public Rect DefaultWindowRect
        {
            get
            {
                return _defalutWindowRect;
            }
        }
        public GameLibrary.RGSS.Viewport ViewPortHeaer
        {
            get
            {
                return _viewportHeader;
            }
        }
    }
}
