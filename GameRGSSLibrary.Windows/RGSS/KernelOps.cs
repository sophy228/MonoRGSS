using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.GameEngine;

namespace GameLibrary.RGSS
{
    public class KernelOps
    {
        public static Stream Load_Data(string path)
        {
            return RGSSEngine.GetGame().RGSSData.GetStream(path);
        }
    }
}
