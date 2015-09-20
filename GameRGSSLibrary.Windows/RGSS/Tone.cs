using System;
using System.Collections.Generic;
using System.IO;
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
        public ValueChangedFunc ValueChanged;

        public Tone(int red, int green, int blue, int gray = 0)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Gray = gray;
        }
        public Tone()
        {
            Red = 0;
            Green = 0;
            Blue = 0;
            Gray = 0;
        }

        public int Red
        {
            get
            {
                return _red;
            }
            set
            {
                if (value >= -255 && value <= 255)
                    _red = value;
                else
                    _red = (value > 255) ? 255 : -255;
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
                if (value >= -255 && value <= 255)
                    _green = value;
                else
                    _green = (value > 255) ? 255 : -255;
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
                if (value >= -255 && value <= 255)
                    _blue = value;
                else
                    _blue = (value > 255) ? 255 : -255;
                if (ValueChanged != null)
                    ValueChanged(this);
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
                    _gray = (value > 255) ? 255 :0;
                if (ValueChanged != null)
                    ValueChanged(this);
            }
        }

        public void SetTone(int red, int green, int blue, int gray = 0)
        {
            Red = red;
            Green = green;
            Blue = blue;
            Gray = gray;
            if (ValueChanged != null)
                ValueChanged(this);
        }

        public static Tone Load(byte[] data)
        {
            Stream stream = new MemoryStream(data);
            BinaryReader reader = new BinaryReader(stream);
            double r = reader.ReadDouble();
            int g = (int)reader.ReadDouble();
            int b = (int)reader.ReadDouble();
            int gray = (int)reader.ReadDouble();
            return new Tone((int)r, g, b, gray);
        }

        public static byte[] Store(Tone tone)
        {
            
            Stream stream = new MemoryStream();
            BinaryWriter writer = new BinaryWriter(stream);
            writer.Write((double)tone.Red);
            writer.Write((double)tone.Green);
            writer.Write((double)tone.Blue);
            writer.Write((double)tone.Gray);
            byte[] buffer = new byte[stream.Length];
            stream.Seek(0, SeekOrigin.Begin);
            stream.Read(buffer, 0, (int)stream.Length);
            stream.Dispose();
            return buffer;
        }
    }
}
