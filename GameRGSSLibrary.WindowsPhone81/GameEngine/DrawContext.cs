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
            _viewportHeader = new Viewport(this, null);
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
