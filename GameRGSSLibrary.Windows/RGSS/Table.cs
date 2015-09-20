using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class Table
    {
        private Array array;
        private int _xsize;
        private int _ysize;
        private int _zsize;
        public Table(int xsize, int ysize = 0, int zsize = 0)
        {

            array = CreateNewArray(xsize, ysize, zsize);
        }
        public Table()
        {
            array = CreateNewArray(1);
        }

        private Array CreateNewArray(int xsize, int ysize = 0, int zsize = 0)
        {
            Array narray;
            _xsize = xsize;
            _ysize = ysize;
            _zsize = zsize;
           if (ysize == 0 && zsize == 0)
               narray = Array.CreateInstance(typeof(int), new int[] { xsize });
           else if(zsize == 0)
                narray = Array.CreateInstance(typeof(int), new int[] { xsize, ysize });
           else
                narray = Array.CreateInstance(typeof(int), new int[] { xsize, ysize,zsize });
            return narray;
        }

        public void Resize(int xsize, int ysize = 0, int zsize = 0)
        {
            Array newarray = CreateNewArray(xsize, ysize, zsize);
            int xlength ;
            int ylength ;
            int zlength ;
            xlength = xsize > array.GetLength(0) ? array.GetLength(0) : xsize;
            if (array.Rank == 1)
            {

                for (int i = 0; i < xlength; i++)
                    newarray.SetValue(array.GetValue(new int[] { i }), new int[] { i });
            }
            if (array.Rank == 2)
            {
                ylength = ysize > array.GetLength(1) ? array.GetLength(1) : ysize;
                for (int i = 0; i < xlength; i++)
                    for (int j = 0; j < ylength; j++)
                        newarray.SetValue(array.GetValue(new int[] { i,j }), new int[] { i,j });
            }
            if (array.Rank == 3)
            {
                ylength = ysize > array.GetLength(1) ? array.GetLength(1) : ysize;
                zlength = zsize > array.GetLength(2) ? array.GetLength(2) : zsize;
                for (int i = 0; i < xlength; i++)
                    for (int j = 0; j < ylength; j++)
                        for (int k = 0; k < zlength; k++)
                            newarray.SetValue(array.GetValue(new int[] { i, j, k }), new int[] { i, j, k });
            }

            array = newarray;
        }

        public int this[int i]
        {
            get
            {
                if (i > XSize - 1)
                    return -1;
                else
                    return (int)array.GetValue(new int[] { i });
            }
            set
            {
                array.SetValue(value, new int[] { i });
            }
        }

        public int this[int i, int j]
        {
            get
            {
                if (i > XSize - 1 || j > YSize - 1)
                    return -1;
                else
                    return (int)array.GetValue(new int[] { i, j });
            }
            set
            {
                array.SetValue(value, new int[] { i,j });
            }
        }

        public int this[int i, int j, int k]
        {
            get
            {
                if (i > XSize - 1 || j > YSize - 1 || k > ZSize - 1)
                    return -1;
                else
                    return (int)array.GetValue(new int[] { i, j,k});
            }
            set
            {
                array.SetValue(value, new int[] { i, j,k });
            }
        }

        public int XSize
        {
            get
            {
                return _xsize;
            }
        }

        public int YSize
        {
            get
            {
                return _ysize;
            }
        }

        public int ZSize
        {
            get
            {
                return _zsize;
            }
        }

        public static Table LoadTable(byte[] data)
        {
            Stream stream = new MemoryStream(data);
            BinaryReader reader = new BinaryReader(stream);
            int dim = reader.ReadInt32();
            int[] size = new int[3]{0,0,0};
            int count = 1;
            for(int i = 0; i < 3;i++)
            {
                size[i] = reader.ReadInt32();
                if(size[i] != 0)
                count *= size[i];
            }

            if (dim == 2)
            {
                size[2] = 0;
            }
            if(dim == 1)
            {
                size[1] = 0;
                size[2] = 0;
            }

            if (count != reader.ReadInt32())
                return null;
            
            Table tlb = new Table(size[0], size[1], size[2]);
            if (dim == 3)
            {
                for (int z = 0; z < size[2]; z++)
                for (int y = 0; y < size[1]; y++)
                        for (int x = 0; x < size[0]; x++)
                        {
                            tlb[x, y, z] = reader.ReadInt16();
                        }
            }
            if(dim == 2)
            {
                for (int y = 0; y < size[1]; y++)
                    for (int x = 0; x < size[0]; x++)
                        {
                            tlb[x, y] = reader.ReadInt16();
                        }
            }
            if (dim == 1)
            {
                for (int x = 0; x < size[0]; x++)
                    {
                        tlb[x] = reader.ReadInt16();
                    }
            }
            return tlb;
        }

        public static byte[] Store(Table tlb)
        {
            Stream stream = new MemoryStream();
            BinaryWriter writer = new BinaryWriter(stream);
            int dim;
            int count;
            if (( tlb.ZSize == 0 )
                && ( tlb.YSize == 0))
            {
                dim = 1;
                count = tlb.XSize;
            }
            else if ( tlb.ZSize == 0)
            {
                dim = 2;
                count = tlb.XSize * tlb.YSize;
            }
            else
            {
                dim = 3;
                count = tlb.XSize * tlb.YSize * tlb.ZSize;
            }
            writer.Write(dim);
            writer.Write(tlb.XSize);
            writer.Write(tlb.YSize);
            writer.Write(tlb.ZSize);
            writer.Write(count);
            if(dim == 3)
            {
                for (int z = 0; z < tlb.ZSize; z++)
                    for (int y = 0; y < tlb.YSize; y++)
                        for (int x = 0; x < tlb.XSize; x++)
                        {
                            writer.Write((Int16)tlb[x, y, z]);
                        }
            }
            else if(dim == 2)
            {
                    for (int y = 0; y < tlb.YSize; y++)
                        for (int x = 0; x < tlb.XSize; x++)
                        {
                            writer.Write((Int16)tlb[x, y]);
                        }
            }
            else if(dim == 1)
            {
                for (int x = 0; x < tlb.XSize; x++)
                {
                    writer.Write((Int16)tlb[x]);
                }
            }
            byte[] buffer = new byte[stream.Length];
            stream.Seek(0, SeekOrigin.Begin);
            stream.Read(buffer, 0, (int)stream.Length);
            stream.Dispose();
            return buffer;
        }
    }
}
