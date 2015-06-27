using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class Tone
    {
        private int _red;
        private int _green;
        private int _blue;
        private int _gray;


        public Tone(int red, int green, int blue, int gray = 0)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Gray = gray;
        }

        public int Red
        {
            get
            {
                return _red;
            }
            set
            {
                if (value >= 0 && value <= 255)
                    _red = value;
                else
                    _red = (value > 255) ? 255 : 0;
            }
        }
        public int Green
        {
            get
            {
                return _green;
            }
            set
            {
                if (value >= 0 && value <= 255)
                    _green = value;
                else
                    _green = (value > 255) ? 255 : 0;
            }
        }
        public int Blue
        {
            get
            {
                return _blue;
            }
            set
            {
                if (value >= 0 && value <= 255)
                    _blue = value;
                else
                    _blue = (value > 255) ? 255 : 0;
            }
        }

        public int Gray
        {
            get
            {
                return _gray;
            }
            set
            {
                if (value >= 0 && value <= 255)
                    _gray = value;
                else
                    _gray = (value > 255) ? 255 : 0;
            }
        }

        public void SetTone(int red, int green, int blue, int gray = 0)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Gray = gray;
        }
    }
}
