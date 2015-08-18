using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{   
    public struct DrawData
    {
        internal Tileset tileset;
        internal Rect[] drawArea;
    }

    public struct DrawSprite
    {
        internal Sprite[] sprites;
        public bool Visible
        {
            set
            {
                foreach (Sprite sp in sprites)
                    sp.Visible = value;
            }
            get
            {
                return sprites[0].Visible;
            }
        }
    }
    public class TileManager
    {
        
        private Tileset[] autoTileSets;
        private Tileset[] TileA5Sets;
        private Tileset[] TileNormalSets;
        private static TileManager instance;
        private Tilemap tileMap;
        private List<Sprite> sprites;
        private DrawSprite[, ,] drawSprites;

        TilePic TilePicA1;
        TilePic TilePicA2;
        TilePic TilePicA3;
        TilePic TilePicA4;
        TilePic TilePicA5;
        TilePic TilePicB;
        TilePic TilePicC;
        TilePic TilePicD;
        TilePic TilePicE;



        private TileManager(Tilemap map)
        {
            tileMap = map;
            sprites = new List<Sprite>();
            TilePicA1 = new TilePic("TileA1", tileMap.Bitmaps[0], 512, 384);
            TilePicA2 = new TilePic("TileA2", tileMap.Bitmaps[1], 512, 384);
            TilePicA3 = new TilePic("TileA3", tileMap.Bitmaps[2], 512, 256);
            TilePicA4 = new TilePic("TileA4", tileMap.Bitmaps[3], 512, 480);
            TilePicA5 = new TilePic("TileA5", tileMap.Bitmaps[4], 256, 512);
            TilePicB = new TilePic("TileB", tileMap.Bitmaps[5], 512, 512);
            TilePicC = new TilePic("TileC", tileMap.Bitmaps[6], 512, 512);
            TilePicD = new TilePic("TileD", tileMap.Bitmaps[7], 512, 512);
            TilePicE = new TilePic("TileE", tileMap.Bitmaps[8], 512, 512);

            drawSprites = new DrawSprite[tileMap.MapData.XSize, tileMap.MapData.YSize, tileMap.MapData.ZSize];

            autoTileSets = new Tileset[128];
            autoTileSets[0] = new Tileset(TilePicA1, 0, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(0,0,192,96));
            autoTileSets[1] = new Tileset(TilePicA1, 1, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(0, 96, 192, 96));
            autoTileSets[2] = new Tileset(TilePicA1, 2, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyleStatic, new Rect(192, 0, 64, 96));
            autoTileSets[3] = new Tileset(TilePicA1, 3, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyleStatic, new Rect(192, 96, 64, 96));
            autoTileSets[4] = new Tileset(TilePicA1, 4, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(256, 0, 192, 96));
            autoTileSets[5] = new Tileset(TilePicA1, 5, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(448, 0, 64, 96));
            autoTileSets[6] = new Tileset(TilePicA1, 6, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(256, 96, 192, 96));
            autoTileSets[7] = new Tileset(TilePicA1, 7, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(448, 96, 64, 96));
            autoTileSets[8] = new Tileset(TilePicA1, 8, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(0,192, 192, 96));
            autoTileSets[9] = new Tileset(TilePicA1, 9, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(192, 192, 64, 96));
            autoTileSets[10] = new Tileset(TilePicA1, 10, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(0, 288, 192, 96));
            autoTileSets[11] = new Tileset(TilePicA1, 11, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(192, 288, 64, 96));
            autoTileSets[12] = new Tileset(TilePicA1, 12, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(256, 192, 192, 96));
            autoTileSets[13] = new Tileset(TilePicA1, 13, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(448, 192, 64, 96));
            autoTileSets[14] = new Tileset(TilePicA1, 14, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyle1, new Rect(256, 288, 192, 96));
            autoTileSets[15] = new Tileset(TilePicA1, 15, TileStyle.TileStyle3, TilesetAnimateStyle.TilesetAnimateStyle2, new Rect(448, 288, 64, 96));

            for(int index = 16; index < 48; index++)
            {
                Rect posRect = new Rect(((index - 16) % 8) * 64, ((index - 16) / 8) * 96, 64, 96);
                autoTileSets[index] = new Tileset(TilePicA2, index, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }
            for (int index = 48; index < 80; index++)
            {
                Rect posRect = new Rect(((index - 48) % 8) * 64, ((index - 48) / 8) * 64, 64, 64);
                autoTileSets[index] = new Tileset(TilePicA3, index, TileStyle.TileStyle2, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

            for (int index = 80; index < 128; index++)
            {
                if ((index - 80) / 8 % 2 == 0)
                {
                    Rect posRect = new Rect(((index - 80) % 8) * 64, ((index - 80) / 8 / 2) * 160, 64, 96);
                    autoTileSets[index] = new Tileset(TilePicA4, index, TileStyle.TileStyle1, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
                }
                else
                {
                    Rect posRect = new Rect(((index - 80) % 8) * 64, 96+((index - 80) / 8 / 2) * 160, 64, 64);
                    autoTileSets[index] = new Tileset(TilePicA4, index, TileStyle.TileStyle2, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
                }
            }

            TileA5Sets = new Tileset[128];
            for(int index = 0; index < 128; index++)
            {
                Rect posRect = new Rect((index % 8) * 32, (index / 8) * 32, 32, 32);
                TileA5Sets[index] = new Tileset(TilePicA5, index, TileStyle.TileStyle4, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

            TileNormalSets = new Tileset[1024];
            for(int index = 0; index < 256; index++)
            {
                int i = index - 0;
                
                Rect posRect = new Rect((i % 128 % 8) * 32 + (i / 128) * 256, (i % 128 / 8) * 32, 32, 32);
                TileNormalSets[index] = new Tileset(TilePicB, index, TileStyle.TileStyle4, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

            for (int index = 256; index < 512; index++)
            {
                int i = index - 256;
                Rect posRect = new Rect((i % 128 % 8) * 32 + (i / 128) * 256, (i % 128 / 8) * 32, 32, 32);
                TileNormalSets[index] = new Tileset(TilePicC, index, TileStyle.TileStyle4, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

            for (int index = 512; index < 768; index++)
            {
                int i = index - 512;
                Rect posRect = new Rect((i % 128 % 8) * 32 + (i / 128) * 256, (i % 128 / 8) * 32, 32, 32);
                TileNormalSets[index] = new Tileset(TilePicD, index, TileStyle.TileStyle4, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

            for (int index = 768; index < 1024; index++)
            {
                int i = index - 768;
                Rect posRect = new Rect((i % 128 % 8) * 32 + (i / 128) * 256, (i % 128 / 8) * 32, 32, 32);
                TileNormalSets[index] = new Tileset(TilePicE, index, TileStyle.TileStyle4, TilesetAnimateStyle.TilesetAnimateStyleStatic, posRect);
            }

        }

        public static TileManager CreateInstance(Tilemap map)
        {
            if (instance == null)
            {
                instance = new TileManager(map);
                instance.InitilizeMapSprites();
            }
            return instance;
        }

        public static void DestroyInstance()
        {
            instance = null;
        }

        private bool IsAutoTile(int dataID)
        {
            if (dataID >= 2048)
                return true;
            else
                return false;
        }

        private bool IsTileA5(int dataID)
        {
            if (dataID >= 1536 && dataID <= 1663)
                return true;
            else
                return false;
        }

        private bool IsTileNormal(int dataID)
        {
            if (dataID >= 0 && dataID <= 1023)
                return true;
            else
                return false;
        }

        private Tileset FindTileSet(int dataID)
        {
            if(IsAutoTile(dataID))
            {
                int tilesetid = TileDataIDRange.GetAutoTileSetID(dataID);
                return autoTileSets[tilesetid];
            }
            if(IsTileA5(dataID))
            {
                int tilesetid = TileDataIDRange.GetTileSetA5ID(dataID);
                return TileA5Sets[tilesetid];
            }
            if (IsTileNormal(dataID))
            {
                int tilesetid = TileDataIDRange.GetTileSetNormalID(dataID);
                return TileNormalSets[tilesetid];
            }

            return null;
        }

        private bool IsAnimate(int dataID)
        {
            Tileset tileset = FindTileSet(dataID);
            TilesetAnimateStyle animateStyle = tileset.AnimateStyle;
            if (animateStyle.AnimateClass == TileAnimateClass.STATIC)
                return false;
            else
                return true;
        }

        public DrawData GetDrawData(int dataID, int frame=0)
        {
            Tileset tileset = FindTileSet(dataID);
            TilesetAnimateStyle animateStyle = tileset.AnimateStyle;
            TileStyle tileStyle = tileset.TileStyle;
            Rect animateArea = animateStyle.GetCurrentRect(frame);
            int innerIndex = dataID - tileset.DataIDRange.Min;
            Rect[] rawRects = tileStyle.GetRect(innerIndex);
            foreach(Rect rect in rawRects)
            {
                rect.X += animateArea.X;
                rect.X += tileset.AreaInTilePic.X;

                rect.Y += animateArea.Y;
                rect.Y += tileset.AreaInTilePic.Y;
            }
            DrawData drawData = new DrawData();
            drawData.drawArea = rawRects;
            drawData.tileset = tileset;
            return drawData;
        }

        public void InitilizeMapSprites()
        {
            CreateDrawSprites();
        }

        public void CreateDrawSprites()
        {
            Table mapData = tileMap.MapData;
            for (int x = 0; x < mapData.XSize; x++)
                for (int y = 0; y < mapData.YSize; y++)
                    for (int layer = 0; layer < 3; layer++)
                    {
                        if (mapData[x, y, layer] == 0)
                            continue;

                        var drawdata = GetDrawData(mapData[x, y, layer], 0);
                        int slideindex = 0;
                        drawSprites[x, y, layer].sprites = new Sprite[4];
                        
                        
                        foreach (Rect rect in drawdata.drawArea)
                        {
                            Sprite sprite = new Sprite(tileMap.Viewport);
                            sprite.Bitmap = drawdata.tileset.TilePic.Bitmap;
                            sprite.SrcRect = rect;
                            sprite.X = (slideindex % 2) * 16 + 32 * (x);
                            sprite.Y = (slideindex / 2) * 16 + 32 * (y);
                            if ((tileMap.Passanges[mapData[x, y, layer]] & 0x10) == 0x10)
                                sprite.Z = 200;
                            else
                                sprite.Z = 0;
                            drawSprites[x, y, layer].sprites[slideindex] = sprite;
                            slideindex++;
                        }
                        // break;
                    }
            AddShadow();
        }

        private void AddShadow()
        {
            Table mapData = tileMap.MapData;
            for (int x = 1; x < mapData.XSize; x++)
                for (int y = 1; y < mapData.YSize; y++)
                {
                    
                    int dataid1 = mapData[x - 1, y, 0];
                    int dataid2 = mapData[x - 1, y - 1, 0];
                    Tileset tileset1 = FindTileSet(dataid1);
                    Tileset tileset2 = FindTileSet(dataid2);
                    Tileset tileset = FindTileSet(mapData[x, y, 0]);

                    if (tileset.TilePic == TilePicA3 ||
                         tileset.TilePic == TilePicA4 ||
                         tileset.TilePic == TilePicA5)
                        continue;
                    if (tileset1.TilePic == TilePicA3 && 
                        tileset2.TilePic == TilePicA3 && 
                        tileset.TilePic != TilePicA3)
                    {
                        drawSprites[x, y, 0].sprites[0].Color = new Color(20, 20, 20, 128);
                        drawSprites[x, y, 0].sprites[2].Color = new Color(20, 20, 20, 128);
                    }
                    if (tileset1.TilePic == TilePicA4 &&
                        tileset2.TilePic == TilePicA4 &&
                        tileset.TilePic != TilePicA4)
                    {
                        drawSprites[x, y, 0].sprites[0].Color = new Color(20, 20, 20, 128);
                        drawSprites[x, y, 0].sprites[2].Color = new Color(20, 20, 20, 128);
                    }
                }
        }

        private bool isInViewArea(int x, int y)
        {
            int ox = tileMap.Ox;
            int oy = tileMap.Oy;
            int width = tileMap.Viewport.Rect.Width;
            int height = tileMap.Viewport.Rect.Height;
            int xlimit = (int)Math.Min(Math.Ceiling((ox + width) / 32.0), tileMap.MapData.XSize);
            int ylimit = (int)Math.Min( Math.Ceiling((oy + height) / 32.0), tileMap.MapData.YSize);

            if (x >= ox / 32 && x < xlimit)
                if (y >= oy / 32 && y < ylimit)
                    return true;

            return false;
        }

        public void UpdataDrawSprites(int frameCount)
        {
             Table mapData = tileMap.MapData;
             int x;
             int y;
             int layer;
             try
             {
                 for ( x = 0; x < mapData.XSize; x++)
                     for ( y = 0; y < mapData.YSize; y++)
                         for ( layer = 2; layer >= 0; layer--)
                         {
                             if (mapData[x, y, layer] == 0)
                                 continue;
                             if (!isInViewArea(x, y))
                             {
                                 drawSprites[x, y, layer].Visible = false;
                                 continue;
                             }
                             else
                                 drawSprites[x, y, layer].Visible = true;
                             if (IsAnimate(mapData[x, y, layer]))
                             {
                                 var drawdata = GetDrawData(mapData[x, y, layer], frameCount);
                                 int slideindex = 0;
                                 foreach (Rect rect in drawdata.drawArea)
                                 {
                                     drawSprites[x, y, layer].sprites[slideindex].SrcRect = rect;
                                     slideindex++;
                                 }
                             }

                             int index = 0;
                             foreach (Sprite sp in drawSprites[x, y, layer].sprites)
                             {
                                 sp.X = (index % 2) * 16 + 32 * (x) - tileMap.Ox;
                                 sp.Y = (index / 2) * 16 + 32 * (y) - tileMap.Oy;
                                 index++;
                             }

                         }
             }
            catch(Exception e)
             {
                
             }
        }

        public void UpdataMapSprites(int frameCount)
        {
            UpdataDrawSprites(frameCount);
        }
    }
}
