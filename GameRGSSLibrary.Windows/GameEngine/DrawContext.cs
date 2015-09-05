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
        private int currentRenderIndex;
        private Texture2D blackTexture;

        private Effect transionEffect;
        private Effect brightEffect;

        

        public DrawContext(DrawManager drawManager)
        {
            _drawMagager = drawManager;
            _defalutWindowRect = new Rect(0, 0, 544, 416);
            _viewportHeader = new GameLibrary.RGSS.Viewport(this, _defalutWindowRect);
            _viewportHeader.selfManaged = true;
            renderBackbuffer = new RenderTarget2D[2];
            renderBackbuffer[0] = new RenderTarget2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height, false, SurfaceFormat.Color, DepthFormat.None, 100, RenderTargetUsage.PreserveContents);
            renderBackbuffer[1] = new RenderTarget2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height, false, SurfaceFormat.Color, DepthFormat.None, 100, RenderTargetUsage.PreserveContents);
            currentRenderIndex = 0;
            CreatePureBlackTexture();
            Brightness = 255;
            transionEffect = _drawMagager.Content.Load<Effect>("Effect\\TransitionEffect");
            
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


        private void CreatePureBlackTexture()
        {
            blackTexture = new Texture2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height);
            int size = blackTexture.Width * blackTexture.Height;
            Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
            for (int i = 0; i < size; i++)
                data[i] = Microsoft.Xna.Framework.Color.Gray;
            blackTexture.SetData<Microsoft.Xna.Framework.Color>(0, blackTexture.Bounds, data, 0, size);
        }

        public void DrawTransition(float fFadeAmount, string filename = null)
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

        virtual public void Draw(int frameCount, bool renderOnly = false)
        {
            bool needRecall = false;
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
            if (!renderOnly)
            {
                _drawMagager.SpriteBatch.Begin(
                   SpriteSortMode.Immediate,
                   BlendState.AlphaBlend);
                if (_drawMagager.FullScreen)
                   _drawMagager.SpriteBatch.Draw(RenderTarget, _drawMagager.GraphicsDevice.PresentationParameters.Bounds, _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                else
                   _drawMagager.SpriteBatch.Draw(RenderTarget, _defalutWindowRect.toXnaRect(), _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
            }
        }

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
