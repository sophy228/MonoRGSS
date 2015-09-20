﻿
using System.IO;
namespace GameLibrary.RGSS
{
    public delegate void ValueChangedFunc(object obj);
    public class Color
    {
        private int _red;
        private int _green;
        private int _blue;
        private int _alpha;
        public ValueChangedFunc ValueChanged;
        public Color(int red, int green, int blue, int alpha = 255)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Alpha = alpha;
        }
        public Color()
        {
            Red = 0;
            Green = 0;
            Blue = 0;
            Alpha = 0;
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
                if (ValueChanged != null)
                    ValueChanged(this);
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
                if (ValueChanged != null)
                    ValueChanged(this);
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
                if (ValueChanged != null)
                    ValueChanged(this);
            }
        }

        public int Alpha
        {
            get
            {
                return _alpha;
            }
            set
            {
                if (value >= 0 && value <= 255)
                    _alpha = value;
                else
                    _alpha = (value > 255) ? 255 : 0;
                if (ValueChanged != null)
                    ValueChanged(this);
            }
        }

        public void SetColor(int red, int green, int blue, int alpha = 255)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Alpha = alpha;
            if (ValueChanged != null)
                ValueChanged(this);
        }

        public void SetColor(Color c)
        {
            Red = c.Red;
            Green = c.Green;
            Blue = c.Blue;
            Alpha = c.Alpha;
            if (ValueChanged != null)
                ValueChanged(this);
        }

        internal Microsoft.Xna.Framework.Color toXnaColor()
        {
            Microsoft.Xna.Framework.Color color = new Microsoft.Xna.Framework.Color(Red, Green, Blue, Alpha);
            return color;
        }

        internal static Color FormXnaColor(Microsoft.Xna.Framework.Color xcolor)
        {
            Color color = new Color(xcolor.R, xcolor.G, xcolor.B, xcolor.A);
            return color;
        }

        public bool isSame(Color color)
        {
            if (Red == color.Red && Green == color.Green && Blue == color.Blue && Alpha == color.Alpha)
                return true;
            else
                return false;
        }

        public static Color Load(byte[] data)
        {
            
            Stream stream = new MemoryStream(data);
            BinaryReader reader = new BinaryReader(stream);
            double r = reader.ReadDouble();
            int g = (int)reader.ReadDouble();
            int b = (int)reader.ReadDouble();
            int a = (int)reader.ReadDouble();
            return new Color((int)r, g, b, a);
        }

        public static byte[] Store(Color color)
        {

            Stream stream = new MemoryStream();
            BinaryWriter writer = new BinaryWriter(stream);
            writer.Write((double)color.Red);
            writer.Write((double)color.Green);
            writer.Write((double)color.Blue);
            writer.Write((double)color.Alpha);
            byte[] buffer = new byte[stream.Length];
            stream.Seek(0, SeekOrigin.Begin);
            stream.Read(buffer, 0, (int)stream.Length);
            stream.Dispose();
            return buffer;
        }
    
    }
}
