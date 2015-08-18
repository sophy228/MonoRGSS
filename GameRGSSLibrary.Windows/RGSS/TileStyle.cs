using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class TileStyle
    {
        public int[,] map_data;
        public string styleName;
        protected int number;
        private int picePerRow;
        public TileStyle(string name, int piceperRow = 4)
        {
            styleName = name;
            picePerRow = piceperRow;
        }

        public int Number
        {
            get
            {
                return map_data.GetLength(0);
            }
        }
        public  Rect[] GetRect(int index)
        {
            Rect[] rects = new Rect[4];
 
            for (int i = 0; i < map_data.GetLength(1); i++)
            {
                Rect rect;
                if (index >= 0 && index < Number)
                {
                    int smallSildes = map_data[index, i];
                    int row = smallSildes / picePerRow;
                    int col = smallSildes % picePerRow;
                    rect = new Rect(col * 16, row * 16, 16, 16);
                }
                else
                {
                    rect = new Rect(0, 0, 16, 16);
                }
                rects[i] = rect;
            }
            return rects;
        }

        private static TileStyle tileStyle1, tileStyle2, tileStyle3, tileStyle4;

        public static TileStyle TileStyle1
        {
            get
            {
                if (tileStyle1 == null)
                    tileStyle1 = new TileStyle1();
                return tileStyle1;
            }
        }
        public static TileStyle TileStyle2
        {
            get
            {
                if (tileStyle2 == null)
                    tileStyle2 = new TileStyle2();
                return tileStyle2;
            }
        }
        public static TileStyle TileStyle3
        {
            get
            {
                if (tileStyle3 == null)
                    tileStyle3 = new TileStyle3();
                return tileStyle3;
            }
        }

        public static TileStyle TileStyle4
        {
            get
            {
                if (tileStyle4 == null)
                    tileStyle4 = new TileStyle4();
                return tileStyle4;
            }
        }
    }

    class TileStyle1 : TileStyle
    {
        
        public TileStyle1():base("Style1")
        {          
            map_data = new int[,]
            {
                {18,17,14,13},//0
                {2,17,14,13}, //1
                {18,3,14,13}, //2
                {2,3,14,13},//3
                {18,17,14,7},//4
                {2,17,14,7},//5
                {18,3,14,7},//6
                {2,3,14,7},//7
                {18,17,6,13},//8
                {2,17,6,13},//9
                {18,3,6,13},//10
                {2,3,6,13},//11
                {18,17,6,7},//12
                {2,14,6,7},//13
                {2,17,6,7},//14
                {2,3,6,7},//15
                {16,17,12,13},//16
                {16,3,12,13},//17
                {16,17,12,7},//18
                {16,3,12,7},//19
                {10,9,14,13}, //20
                {10,9,14,7},//21
                {10,9,6,13},//22
                {10,9,6,7},//23
                {18,19,14,15},//24
                {18,19,6,15},//25
                {2,19,14,7},//26
                {2,19,6,15},//27
                {18,17,22,21},//28
                {2,17,22,21},//29
                {18,3,22,21},//30
                {2,3,22,21},//31
                {16,19,12,15},//32
                {10,9,22,21},//33
                {8,9,12,13}, //34
                {8,9,12,7},   //35
                {10,11,14,15},//36
                {10,11,6,15},//37
                {18,19,22,23},//38
                {2,19,22,23},//39
                {16,17,20,21},//40
                {16,3,20,21},//41
                {8,11,12,15},//42
                {8,9,20,21}, //43
                {16,19,20,23},//44
                {10,11,22,23},//45
                {8,11,20,23},//46
                {0,1,4,5},//47
            };
        }
    }

    class TileStyle2 : TileStyle
    {
        public TileStyle2():base("Style2")
        {
            map_data = new int[,]
            {
                {10,9,6,5},
                {8,9,4,5},
                {2,1,6,5},
                {0,1,4,5},
                {10,11,6,7},
                {8,11,4,7},
                {2,3,6,7},
                {0,3,8,11},
                {10,9,14,13},
                {8,9,12,13},
                {2,1,14,13},
                {0,1,12,13},
                {10,11,14,15},
                {4,7,12,15},
                {2,3,14,15},
                {0,3,12,15}
            };
        }
    }

    class TileStyle3 : TileStyle
    {
        public TileStyle3():base("Style3")
        {
            map_data = new int[,]
            {
                {2,1,6,5},
                {0,1,4,5},
                {2,3,6,7},
                {0,3,4,7}
            };
        }
    }

    class TileStyle4 : TileStyle
    {
        public TileStyle4()
            : base("Style4",2)
        {
            map_data = new int[,]
            {
                {0,1,2,3},
            };
        }
    }
}
