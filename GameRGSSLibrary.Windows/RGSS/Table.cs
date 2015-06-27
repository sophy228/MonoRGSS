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
        public Table(int xsize, int ysize = 0, int zsize = 0)
        {

            array = CreateNewArray(xsize, ysize, zsize);
        }

        private Array CreateNewArray(int xsize, int ysize = 0, int zsize = 0)
        {
            Array narray;
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
                return (int)array.GetValue(new int[] { i,j });
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
                return array.GetLength(0);
            }
        }

        public int YSize
        {
            get
            {
                return array.GetLength(1);
            }
        }

        public int ZSize
        {
            get
            {
                return array.GetLength(2);
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
    }
}
