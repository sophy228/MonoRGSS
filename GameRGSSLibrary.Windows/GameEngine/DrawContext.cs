using GameLibrary.RGSS;

namespace GameLibrary.GameEngine
{
    public abstract class DrawContext
    {
        protected DrawManager _drawMagager;

        private Viewport _viewportHeader;
        public DrawContext(DrawManager drawManager)
        {
            _drawMagager = drawManager;
            _viewportHeader = new Viewport(this, new Rect(0,0,1024,768));
        }
        public DrawContext()
        {

        }
        virtual public void Draw(int frameCount)
        {
            _viewportHeader.Draw(_drawMagager, frameCount);
            foreach(Viewport vp in ViewPortHeaer)
            {
                vp.Draw(_drawMagager, frameCount);
            }
        }

        virtual public void PreBlend(int frameCount)
        {
            _viewportHeader.PreBlend(_drawMagager, frameCount);
            foreach (Viewport vp in ViewPortHeaer)
            {
                vp.PreBlend(_drawMagager, frameCount);
            }
        }
        virtual public void AddSprit(Viewport viewport, Sprite sprite)
        {

        }

        public Viewport ViewPortHeaer
        {
            get
            {
                return _viewportHeader;
            }
        }
    }
}
