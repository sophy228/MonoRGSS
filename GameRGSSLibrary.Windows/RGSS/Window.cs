using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class Window : LinkNode, IZorderable
    {
        private  int pxLocX, pxLocY;	// location in window
        private  int z;
        private Viewport _viewport;
        private int pWidth, pHeight;
        private int ox, oy;
        private Bitmap content;
        private Bitmap windowSkin;
        private int padding;
        private Border border;
        private List<Sprite> spriteGroup;
        private Rect cursorRect;
        private int curseortep;
        Microsoft.Xna.Framework.Color cursorColor = Microsoft.Xna.Framework.Color.White;
        Microsoft.Xna.Framework.Color backGroud = Microsoft.Xna.Framework.Color.Transparent;
        private RenderTarget2D mRenderTexture;
        private Texture2D curseTexture;
        private int openness;
        public Window(int x, int y, int width, int height)
        {
            ox = 0;
            oy = 0;
            pxLocX = x;
            pxLocY = y;
            openness = 255;
            pWidth = width;
            pHeight = height;
            
            curseortep = 9;
            spriteGroup = new List<Sprite>();


            content = new Bitmap(width, height);

            var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
            _viewport = context.ViewPortHeaer;
            this.InsertInZorder(_viewport.WindowHeader);
            cursorRect = new Rect(-16, -16, 0, 0);
           // border = new Border(_viewport, pxLocX, pxLocY, pWidth, pHeight, "Graphic/System/Border");
           // padding = border.BorderMargin;
            this.Visible = true;
            this.Active = true;
        }

        public Window()
        {
            curseortep = 9;
            openness = 255;
            content = new Bitmap(10,10);
            var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
            _viewport = context.FindSelfManagedViewport();
            this.InsertInZorder(_viewport.WindowHeader);
            cursorRect = new Rect(-16, -16, 0, 0);
            this.Visible = true;
            this.Active = true;
        }

        public int Z
        {
            get
            {
                return z;
            }
            set
            {
                z = value;
                LinkNode.ListDel(this);
                InsertInZorder(_viewport.WindowHeader);
            }
        }

        public int X
        {
            get
            {
                return pxLocX;
            }
            set
            {
                pxLocX = value;
            }
        }

        public int Y
        {
            get
            {
                return pxLocY;
            }
            set
            {
                pxLocY = value;
            }
        }

        public int Width
        {
            get
            {
                return pWidth;
            }
            set
            {
                pWidth = value;
            }
        }

        public int Height
        {
            get
            {
                return pHeight;
            }
            set
            {
                pHeight = value;
            }
        }

        public Viewport Viewport
        {
            get
            {
                return _viewport;
            }
            set
            {
                _viewport = value;
                LinkNode.ListDel(this);
                if(_viewport == null)
                {
                    var context = RGSSEngine.GetDrawManager().CurrentDrawContext;
                    _viewport = context.ViewPortHeaer;
                }
                this.InsertInZorder(_viewport.WindowHeader);
            }
        }

        public int Ox
        {
            get
            {
                return ox;
            }
            set
            {
                ox = value;
            }
        }

        public int Oy
        {
            get
            {
                return oy;
            }
            set
            {
                oy = value;
            }
        }

        public Bitmap Contents
        {
            get
            {
                return content;
            }
            set
            {
                content = value;
            }
        }

        public Bitmap WindowSKin
        {
            get
            {
                return windowSkin;
            }
            set
            {
                windowSkin = value;
            }
        }

        public Rect CursorRect
        {
            get
            {
                return cursorRect;
            }
            set
            {
                cursorRect = value;
            }
        }

        public int Padding
        {
            get
            {
                return padding ;
            }
            set
            {
                
                padding = value;
            }
        }

        public int Openness
        {
            get
            {
                return openness;
            }
            set
            {
                if (value > 255)
                    value = 255;
                if (value < 0)
                    value = 0;
                openness = value;
            }
        }

        public bool Active { get; set;}

        public bool Visible { get; set; }

        public bool Pause { get; set; }

        private void updateCursor()
        {

        }

        private void updateBorder()
        {
           if (border != null)
              border.dispose();
           border = new Border(_viewport, pxLocX, pxLocY, pWidth * openness / 255, pHeight * openness / 255, "Graphics/System/Border");
            padding = border.BorderMargin;
        }

        public void InsertInZorder(LinkNode header)
        {
            foreach (Window n in header)
            {
                if (this.Z < n.Z)
                {
                    LinkNode.ListAddTail(this, n);
                    return;
                }
            }
            LinkNode.ListAddTail(this, header);
        }

        private void BlendCurse(DrawManager dm, Rect curseRect, Microsoft.Xna.Framework.Color backcolor, Microsoft.Xna.Framework.Color bordercolor)
        {
            if (!CursorRect.IsEmpty)
            {
                if (curseTexture != null)
                    curseTexture.Dispose();
                curseTexture = this.CreateFilledTexture(dm, curseRect.Width, curseRect.Height, backcolor, 2, bordercolor);
                dm.SpriteBatch.Draw(curseTexture, new Vector2(curseRect.X, curseRect.Y), curseTexture.Bounds, Microsoft.Xna.Framework.Color.White);
            }
        }

        private void BlendContent(DrawManager dm, Rect curseRect, Microsoft.Xna.Framework.Color curseRectBackcolor, Microsoft.Xna.Framework.Color curseBordercolor)
        {
            if(Contents != null)
            {

                 var contentTexture = Contents.Texture;
                 if (mRenderTexture == null)
                    mRenderTexture = new RenderTarget2D(dm.GraphicsDevice, contentTexture.Width, contentTexture.Height, false, SurfaceFormat.Color, DepthFormat.None, 100, RenderTargetUsage.PreserveContents);
                 lock (dm)
                 {
                     dm.GraphicsDevice.SetRenderTarget(mRenderTexture);
                     dm.GraphicsDevice.Clear(Microsoft.Xna.Framework.Color.Transparent);
                     dm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
                     dm.SpriteBatch.Draw(contentTexture, Contents.Rect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
                     BlendCurse(dm, curseRect, curseRectBackcolor, curseBordercolor);
                     dm.SpriteBatch.End();
                     dm.GraphicsDevice.SetRenderTarget(null);
                 }
            }

        }

        private Texture2D CreateFilledTexture(DrawManager dm, int width, int height, Microsoft.Xna.Framework.Color colour, int border, Microsoft.Xna.Framework.Color borderColour)
        {
            int size = width * height;
            Texture2D t = new Texture2D(dm.GraphicsDevice, width, height);
            Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
            if (border == 0)
            {
                for (int i = 0; i < size; i++)
                    data[i] = colour;
            }
            else
            {
                for (int x = 0; x < width; x++)
                    for (int y = 0; y < height; y++)
                        if (x <= border || x >= (width - 1) - border || y <= border || y >= (height - 1) - border)
                            data[x + (width * y)] = borderColour;
                        else
                            data[x + (width * y)] = colour;

            }
            t.SetData<Microsoft.Xna.Framework.Color>(data);
            return t;
        }

        internal void PreBlend(DrawManager dm, int frameCount)
        {
            if (!Visible)
                return;
           if(openness > 0)
                updateBorder();
            if (openness < 255)
                return;
            
            {
                Microsoft.Xna.Framework.Color darkCurse = new Microsoft.Xna.Framework.Color(220, 220, 220, 255);
                Microsoft.Xna.Framework.Color darcBack = new Microsoft.Xna.Framework.Color(0, 0, 0, 100);

                if (!Active)
                {
                    cursorColor = Microsoft.Xna.Framework.Color.White;
                    backGroud = Microsoft.Xna.Framework.Color.Transparent;
                }
                else  if (frameCount % curseortep == 0)
                {
                    cursorColor = cursorColor == Microsoft.Xna.Framework.Color.White ? darkCurse : Microsoft.Xna.Framework.Color.White;
                    backGroud = backGroud == Microsoft.Xna.Framework.Color.Transparent ? darcBack : Microsoft.Xna.Framework.Color.Transparent;
                }
                BlendContent(dm, CursorRect, backGroud, cursorColor);
            }  
        }

        internal void Draw(DrawManager dm, int frameCount)
        {
            if (!Visible)
                return;
            if (border != null && openness > 0)
                border.Draw(dm, frameCount);
            if (openness < 255)
                return;
           
            Texture2D texture = null;
            if (mRenderTexture != null)
            {
                texture = mRenderTexture;
            }
            else if(Contents != null)
            {
                texture = Contents.Texture;
            }
            if(texture != null)
                dm.SpriteBatch.Draw(texture, new Rectangle(pxLocX + padding, pxLocY + padding, pWidth - 2 * padding, pHeight - 2 * padding),
                new Rectangle(ox, oy, texture.Width, texture.Height), Microsoft.Xna.Framework.Color.White);
        }

        public void Update( )
        {
          PreBlend(RGSSEngine.GetDrawManager(), RGSSEngine.GetGame().GameControler.FrameCount);
        }

        public void Dispose()
        {
            if(border != null)
                border.dispose();
            if (curseTexture != null)
                curseTexture.Dispose();
            if (content != null)
                content.Dispose();
            if (mRenderTexture != null)
                mRenderTexture.Dispose();
            LinkNode.ListDel(this);
        }
    }
}
