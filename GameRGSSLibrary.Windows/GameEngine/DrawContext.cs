using GameLibrary.RGSS;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.GameEngine
{
    public abstract class DrawContext
    {
        protected DrawManager _drawMagager;

        private GameLibrary.RGSS.Viewport _viewportHeader;

        private Rect _defalutWindowRect;

        private RenderTarget2D renderTarget;
        public DrawContext(DrawManager drawManager)
        {
            _drawMagager = drawManager;
            _defalutWindowRect = new Rect(0, 0, 544, 416);
            _viewportHeader = new GameLibrary.RGSS.Viewport(this, _defalutWindowRect);
            renderTarget = new RenderTarget2D(_drawMagager.GraphicsDevice, _defalutWindowRect.Width, _defalutWindowRect.Height, false, SurfaceFormat.Color, DepthFormat.None, 100, RenderTargetUsage.PreserveContents);
        }
        public DrawContext()
        {

        }
        virtual public void Draw(int frameCount, bool renderOnly = false)
        {

            _drawMagager.GraphicsDevice.SetRenderTarget(renderTarget);
            _drawMagager.GraphicsDevice.Clear(Microsoft.Xna.Framework.Color.Transparent);
                foreach (GameLibrary.RGSS.Viewport vp in ViewPortHeaer)
                {
                    vp.Draw(_drawMagager, frameCount);
                }
                _viewportHeader.Draw(_drawMagager, frameCount);
            _drawMagager.GraphicsDevice.SetRenderTarget(null);

            if (!renderOnly)
            {
                _drawMagager.SpriteBatch.Begin(
                   SpriteSortMode.Immediate,
                   BlendState.AlphaBlend);
                _drawMagager.SpriteBatch.Draw(renderTarget, _drawMagager.GraphicsDevice.PresentationParameters.Bounds, _defalutWindowRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                _drawMagager.SpriteBatch.End();
            }
          //
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
                return renderTarget;
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
