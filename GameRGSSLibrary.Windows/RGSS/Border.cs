using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;

namespace GameLibrary.RGSS
{
   public  class Border
    {
        public int pxLocX, pxLocY;	// location in texture
        public int pxWidth, pxHeight;	// size
        private Bitmap boarderBitmap;
        	// width/height of the border elements within the texture
		//
		//         +-------+--+-------+  -
		//         | xxxxxx|xx|xxxxxx |  | Top
		//         |x      |  |      x|  |
		//         +-------+--+-------+  -
		//         |x      |  |      x|
		//         +-------+--+-------+  -
		//         |x      |  |      x|  | Bottom
		//         | xxxxxx|xx|xxxxxx |  |
		//         +-------+--+-------+  -
		//
		//         |-------|  |-------|
		//           Left       Right
        private enum BorderPieces
        {
            TopLeft, Top = 1, TopRight = 2,
            Left = 3, Center = 4, Right = 5,
            BottomLeft = 6, Bottom = 7, BottomRight = 8,
            MAX = 9,
        }
        private Sprite[] m_aBorderSprites = new Sprite[(int)BorderPieces.MAX];
        private int m_pxLeft, m_pxTop, m_pxRight, m_pxBottom;

        public Border([Optional]Viewport viewPort, int x, int y, int width, int height, string boardTexturePath)
        {
            pxLocX = x;
            pxLocY = y;
            pxWidth = width;
            pxHeight = height;
            boarderBitmap = new Bitmap(boardTexturePath);
            m_pxLeft = m_pxRight = (boarderBitmap.Width - 1) / 2;
            m_pxTop = m_pxBottom = (boarderBitmap.Height - 1) / 2;
            pxWidth -= 2 * BorderMargin;
            pxHeight -= 2 * BorderMargin;
            AddBorderSprite(viewPort, BorderPieces.TopLeft);
            AddBorderSprite(viewPort, BorderPieces.Top);
            AddBorderSprite(viewPort, BorderPieces.TopRight);
            AddBorderSprite(viewPort, BorderPieces.Left);
            AddBorderSprite(viewPort, BorderPieces.Center);
            AddBorderSprite(viewPort, BorderPieces.Right);
            AddBorderSprite(viewPort, BorderPieces.BottomLeft);
            AddBorderSprite(viewPort, BorderPieces.Bottom);
            AddBorderSprite(viewPort, BorderPieces.BottomRight);
        }

       public int BorderMargin
        {
           get
            {
                return m_pxLeft;
            }
        }
        
        private int MAPX(int x)
        {
            return x + pxLocX;
        }

        private int MAPY(int y)
        {
            return y + pxLocY;
        }

        private void AddBorderSprite([Optional]Viewport viewPort, BorderPieces ePiece)
        {
           var sp = m_aBorderSprites[(int)ePiece] = new Sprite(viewPort,true);
           sp.Bitmap = boarderBitmap;
           if (ePiece == BorderPieces.TopLeft)
           {
               sp.X = MAPX(0);
               sp.Y = MAPY(0);
               sp.SrcRect = new Rect(0, 0, m_pxLeft, m_pxTop);
           }
           else if(ePiece == BorderPieces.Top)
           {
               sp.X = MAPX(m_pxLeft);
               sp.Y = MAPY(0);
               sp.SrcRect = new Rect(m_pxLeft, 0, 1, m_pxTop);
               sp.ZoomX = pxWidth;
           }
           else if(ePiece == BorderPieces.TopRight)
           {
               sp.X = MAPX(m_pxLeft + pxWidth);
               sp.Y = MAPY(0);
               sp.SrcRect = new Rect(m_pxLeft + 1, 0, m_pxRight, m_pxTop);
           }
           else if(ePiece == BorderPieces.Left)
           {
               sp.X = MAPX(0);
               sp.Y = MAPY(m_pxTop);
               sp.SrcRect = new Rect(0, m_pxTop, m_pxLeft, 1);
               sp.ZoomY = pxHeight;
           }
           else if(ePiece == BorderPieces.Center)
           {
               sp.X = MAPX(m_pxLeft);
               sp.Y = MAPY(m_pxTop);
               sp.SrcRect = new Rect(m_pxLeft, m_pxTop, 1, 1);
               sp.ZoomX = pxWidth;
               sp.ZoomY = pxHeight;
           }
           else if(ePiece == BorderPieces.Right)
           {
               sp.X = MAPX(m_pxLeft + pxWidth);
               sp.Y = MAPY(m_pxTop);
               sp.SrcRect = new Rect(m_pxLeft + 1, m_pxTop, m_pxRight, 1);
               sp.ZoomY = pxHeight;
           }
           else if(ePiece == BorderPieces.BottomLeft)
           {
               sp.X = MAPX(0);
               sp.Y = MAPY(m_pxTop + pxHeight);
               sp.SrcRect = new Rect(0, m_pxTop + 1, m_pxLeft, m_pxBottom);
           }
           else if(ePiece == BorderPieces.Bottom)
           {
               sp.X = MAPX(m_pxLeft);
               sp.Y = MAPY(m_pxTop + pxHeight);
               sp.SrcRect = new Rect(m_pxLeft, m_pxTop + 1, 1, m_pxBottom);
               sp.ZoomX = pxWidth;
           }
           else if(ePiece == BorderPieces.BottomRight)
           {
               sp.X = MAPX(m_pxLeft + pxWidth);
               sp.Y = MAPY(m_pxTop + pxHeight);
               sp.SrcRect = new Rect(m_pxLeft + 1, m_pxTop + 1, m_pxRight, m_pxBottom);
           }
        }

        public void Draw(DrawManager dm, int frameCount)
        {
            foreach (var sp in m_aBorderSprites)
            {
                if (sp != null)
                    sp.Draw(dm,frameCount);
            }
        }
        public void dispose()
        {
            foreach(var sp in m_aBorderSprites)
            {
                if (sp != null)
                    sp.Dispose();
            }
        }
    }
}
