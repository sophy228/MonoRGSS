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
        private static TileManager instance;
        private Tilemap tileMap;
        private List<Sprite> sprites;
        private DrawSprite[, ,] drawSprites;
        
        
        private TileManager(Tilemap map)
        {
            tileMap = map;
            sprites = new List<Sprite>();
            TilePic TilePicA1 = new TilePic("TileA1", tileMap.Bitmaps[0], 512, 384);
            TilePic TilePicA2 = new TilePic("TileA2", tileMap.Bitmaps[1], 512, 384);
           // TilePic TilePicA3 = new TilePic("TileA3", tileMap.Bitmaps[2], 512, 256);
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

        private Tileset FindTileSet(int dataID)
        {
            if(IsAutoTile(dataID))
            {
                int tilesetid = TileDataIDRange.GetTileSetID(dataID);
                return autoTileSets[tilesetid];
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
                    for (int layer = 2; layer >= 0; layer--)
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
                            sprite.X = (slideindex % 2) * 16 + 32 * (x );
                            sprite.Y = (slideindex / 2) * 16 + 32 * (y );
                            if (layer == 0)
                                sprite.Z = 0;
                            else
                                sprite.Z = 200;
                            drawSprites[x, y, layer].sprites[slideindex] = sprite;
                            slideindex++;
                        }
                        // break;
                    }
        }

        private bool isInViewArea(int x, int y)
        {
            int ox = tileMap.Ox;
            int oy = tileMap.Oy;
            int width = tileMap.Viewport.Rect.Width;
            int height = tileMap.Viewport.Rect.Height;
            int xlimit = Math.Min((ox + width) / 32, tileMap.MapData.XSize);
            int ylimit = Math.Min((oy + height) / 32, tileMap.MapData.YSize);

            if (x >= ox / 32 && x < xlimit)
                if (y >= oy / 32 && y < ylimit)
                    return true;

            return false;
        }

        public void UpdataDrawSprites(int frameCount)
        {
             Table mapData = tileMap.MapData; 
            for (int x = 0; x < mapData.XSize; x++)
                for (int y = 0; y < mapData.YSize; y++)
                    for (int layer = 2; layer >= 0; layer--)
                    {
                        if (mapData[x, y, layer] == 0)
                            continue;
                        if(!isInViewArea(x,y))
                        {
                            drawSprites[x, y, layer].Visible = false;
                            continue;
                        }
                        else
                            drawSprites[x, y, layer].Visible = true;
                        if(IsAnimate(mapData[x,y,layer]))
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
                        foreach(Sprite sp in drawSprites[x, y, layer].sprites)
                        {
                            sp.X = (index % 2) * 16 + 32 * (x) - tileMap.Ox;
                            sp.Y = (index / 2) * 16 + 32 * (y) - tileMap.Oy;
                            index++;
                        }
                    }
        }

        public void UpdataMapSprites(int frameCount)
        {
            UpdataDrawSprites(frameCount);
        }
    }
}
