using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public struct ContentFont
    {
        public SpriteFont font;
        public Color color;
        public ContentFont(SpriteFont ft)
        {
            font = ft;
            color = Color.FormXnaColor(Microsoft.Xna.Framework.Color.White);
        }

    };

    public class Bitmap
    {

        private int mWidth;
        private int mHeight;
        private Rectangle mRect;
        private Texture2D mTexture;
        public ContentFont Font;
        private DrawManager drm;
        private RenderTarget2D mRenderTexture;


        public Bitmap(String path)
        {
            drm = RGSSEngine.GetDrawManager();
            mTexture = drm.Content.Load<Texture2D>(path);
            mRenderTexture = new RenderTarget2D(drm.GraphicsDevice, mTexture.Width, mTexture.Height);
            mWidth = mTexture.Width;
            mHeight = mTexture.Height;
            mRect = new Rectangle(0, 0, mWidth, mHeight);
            Font = new ContentFont(drm.Content.Load<SpriteFont>("Font\\default"));
            RenderTexture();
        }

        public Bitmap(int width, int height)
        {
            drm = RGSSEngine.GetDrawManager();
            mWidth = width;
            mHeight = height;
           // mTexture = new Texture2D(drm.GraphicsDevice, width, height);
            mRenderTexture = new RenderTarget2D(drm.GraphicsDevice, width, height);
            mRect = new Rectangle(0, 0, mWidth, mHeight);
            mTexture = (Texture2D)mRenderTexture;
          //  Font = new ContentFont(drm.Content.Load<SpriteFont>("Font\\default"));
        }

        public Texture2D Texture
        {
            get
            {
                return mTexture;
            }
        }

        public int Width
        {
            get
            {
                return mWidth;
            }
        }

        public int Height
        {
            get
            {
                return mHeight;
            }
        }

        public Rect Rect
        {
            get
            {
                return new Rect(mRect.X, mRect.Y, mRect.Width, mRect.Y);
            }
        }

        private void RenderTexture()
        {
            drm.GraphicsDevice.SetRenderTarget(mRenderTexture);
            drm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
            drm.SpriteBatch.Draw(mTexture, mRect, Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.End();
            drm.GraphicsDevice.SetRenderTarget(null);
            mTexture = (Texture2D)mRenderTexture;
        }

        public void FillRect(int x, int y, int width, int height, Color color)
        {
            Rect rect = new Rect(x, y, width, height);
            FillRect(rect, color);
        }

        public void FillRect(Rect rrect, Color color)
        {
            Rectangle rect = new Rectangle(rrect.X, rrect.Y, rrect.Width, rrect.Height);
            if (mRect.Contains(rect))
            {
                int size = rect.Width * rect.Height;
                Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
                for (int i = 0; i < size; i++)
                    data[i] = color.toXnaColor();
                mTexture.SetData<Microsoft.Xna.Framework.Color>(0, rect, data, 0, size);
            }
            else
            {
                throw new Exception("FillRect: Ivalid parameter!");
            }
        }

        public void Clear()
        {
            Rect rect = new Rect(mRect.X, mRect.Y, mRect.Width, mRect.Y);
            FillRect(rect, Color.FormXnaColor(Microsoft.Xna.Framework.Color.Transparent));
        }

        public void Clear(int x, int y, int width, int height)
        {
            FillRect(x, y, width, height, Color.FormXnaColor(Microsoft.Xna.Framework.Color.Transparent));
        }

        public void Clear(Rect rect)
        {
            FillRect(rect, Color.FormXnaColor(Microsoft.Xna.Framework.Color.Transparent));
        }

        public Color GetPixel(int x, int y)
        {
            if (mRect.Contains(x, y))
            {
                Rectangle rect = new Rectangle(x, y, 1, 1);
                Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[1];
                mTexture.GetData<Microsoft.Xna.Framework.Color>(0, rect, data, 0, 1);
                return Color.FormXnaColor(data[0]);
            }
            else
            {
                throw new Exception("GetPixel: Ivalid parameter!");
            }
        }

        public void SetPixel(int x, int y, Color color)
        {
            if (mRect.Contains(x, y))
            {
                Rect rect = new Rect(x, y, 1, 1);
                FillRect(rect, color);
            }
            else
            {
                throw new Exception("SetPixel: Ivalid parameter!");
            }
        }

        public void HueChange(int hue)
        {
            int size = mWidth * mHeight;
            Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
            mTexture.GetData<Microsoft.Xna.Framework.Color>(data, 0, size);
            for (int i = 0; i < size; i++)
            {
                data[i] = BitMapHelper.HueRotate(data[i], hue);
            }
            mTexture.SetData<Microsoft.Xna.Framework.Color>(data);
        }

        public void GradientFillRect(Rectangle rect, Color color1, Color color2, Boolean vertical = false)
        {
            if (mRect.Contains(rect))
            {
                int size = rect.Width * rect.Height;
                Microsoft.Xna.Framework.Color[] data = new Microsoft.Xna.Framework.Color[size];
                int gradientNumber = vertical ? rect.Height : rect.Width;
                float Rstep = (color2.Red - color1.Red) / (float)gradientNumber;
                float Gstep = (color2.Green - color1.Green) / (float)gradientNumber;
                float Bstep = (color2.Blue - color1.Blue) / (float)gradientNumber;
                float Astep = (color2.Alpha - color1.Alpha) / (float)gradientNumber;

                float Rinit = color1.Red;
                float Ginit = color1.Green;
                float Binit = color1.Blue;
                float Ainit = color1.Alpha;

                int i = 0;
                while (i < size)
                {

                    data[i++] = new Microsoft.Xna.Framework.Color(Rinit, Ginit, Binit, Ainit);
                    if (!vertical)
                    {
                        Rinit += Rstep;
                        Ginit += Gstep;
                        Binit += Bstep;
                        Ainit += Astep;
                        if (i % rect.Width == 0)
                        {
                            Rinit = color1.Red;
                            Ginit = color1.Green;
                            Binit = color1.Blue;
                            Ainit = color1.Alpha;
                        }
                    }
                    else if (i % rect.Width == 0)
                    {
                        Rinit += Rstep;
                        Ginit += Gstep;
                        Binit += Bstep;
                        Ainit += Astep;
                    }
                }
                mTexture.SetData<Microsoft.Xna.Framework.Color>(0, rect, data, 0, size);
            }
        }

        public void GradientFillRect(int x, int y, int width, int height, Color color1, Color color2, Boolean vertical = false)
        {
            Rectangle rect = new Rectangle(x, y, width, height);
            GradientFillRect(rect, color1, color2, vertical);
        }

        public void DrawText(int x, int y, int width, int height, string text, int align = 0)
        {
           // RenderTarget2D rendertarget = new RenderTarget2D(drm.GraphicsDevice, mTexture.Width, mTexture.Height);
            SpriteFont spriteFont = this.Font.font;
            Vector2 position = new Vector2(x, y);
            Color color = this.Font.color;
            float rotation = 0;
            Vector2 origin = new Vector2(0, 0);

            float xscale = (float)width / (text.Length * (spriteFont.Spacing + 25));
            float yscale = (float)height / ((spriteFont.LineSpacing));
            xscale = 1f;
            Vector2 scale = new Vector2(xscale, yscale);
            SpriteEffects effects = SpriteEffects.None;
            float layerDepth = 0;


            drm.GraphicsDevice.SetRenderTarget(mRenderTexture);
            drm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
            drm.SpriteBatch.Draw(mTexture, mRect, Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.DrawString(spriteFont, text, position, color.toXnaColor(), rotation, origin, scale, effects, layerDepth);
            drm.SpriteBatch.End();
            drm.GraphicsDevice.SetRenderTarget(null);
        }
        public void Blt(int x, int y, Bitmap srcBitmap, Rect srcRect, int opacity=0)
        {
            //RenderTarget2D rendertarget = new RenderTarget2D(drm.GraphicsDevice,mTexture.Width,mTexture.Height);
            drm.GraphicsDevice.SetRenderTarget(mRenderTexture);
            drm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
            drm.SpriteBatch.Draw(mTexture, mRenderTexture.Bounds, Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.Draw(srcBitmap.Texture, new Vector2(x, y), srcRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.End();
            drm.GraphicsDevice.SetRenderTarget(null);
        }
        public void StretchBlt(Rect dest_rect, Bitmap srcBitmap, Rect srcRect, int opacity=0)
        {
            //RenderTarget2D rendertarget = new RenderTarget2D(drm.GraphicsDevice, mTexture.Width, mTexture.Height);
            drm.GraphicsDevice.SetRenderTarget(mRenderTexture);
            drm.SpriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
            drm.SpriteBatch.Draw(mTexture, mRenderTexture.Bounds, Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.Draw(srcBitmap.Texture, dest_rect.toXnaRect(), srcRect.toXnaRect(), Microsoft.Xna.Framework.Color.White);
            drm.SpriteBatch.End();
            drm.GraphicsDevice.SetRenderTarget(null);
        }
        public void Dispose()
        {
            mRenderTexture.Dispose();
        }
    }


    internal class BitMapHelper
    {
        private static Matrix matrix1 = new Matrix(0.213f, 0.213f, 0.213f, 0.0f, 0.715f, 0.715f, 0.715f, 0.0f, 0.072f, 0.072f, 0.072f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
        private static Matrix matrix2 = new Matrix(0.787f, -0.213f, -0.213f, 0f, -0.715f, 0.285f, -0.715f, 0f, -0.072f, -0.072f, 0.928f, 0f, 0f, 0f, 0f, 0f);
        private static Matrix matrix3 = new Matrix(-0.213f, 0.143f, -0.787f, 0f, -0.715f, 0.140f, 0.715f, 0f, 0.928f, -0.283f, 0.072f, 0f, 0f, 0f, 0f, 0f);

        private static Matrix getColorM(int ag)
        {
            double thelta = (ag / 360d) * 2 * Math.PI;
            return matrix1 + Matrix.Multiply(matrix2, (float)Math.Cos(thelta)) + Matrix.Multiply(matrix3, (float)Math.Sin(thelta));
        }

        public static Microsoft.Xna.Framework.Color HueRotate(Microsoft.Xna.Framework.Color color, int angle)
        {
            Matrix ColorM = getColorM(angle);
            float R = ((color.R * ColorM.M11) + (color.G * ColorM.M21) + (color.B * ColorM.M31));
            float G = ((color.R * ColorM.M12) + (color.G * ColorM.M22) + (color.B * ColorM.M32));
            float B = ((color.R * ColorM.M13) + (color.G * ColorM.M23) + (color.B * ColorM.M33));
            float A = ((color.R * ColorM.M14) + (color.G * ColorM.M24) + (color.B * ColorM.M34) + color.A);
            return new Microsoft.Xna.Framework.Color(R, G, B, A);
        }
    }
}
