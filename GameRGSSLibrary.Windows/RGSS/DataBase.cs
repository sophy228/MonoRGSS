using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.RGSS
{
    public class DataBase
    {
        private string _rootDir;
        public DataBase()
        {
            _rootDir = "";
        }

        public string RootDir
        {
            get
            {
                return _rootDir;
            }
            set
            {
                _rootDir = value;
            }
        }

        
        public Stream GetStream(string path)
        {
            var storage = Storage.LocalStorage;
            string filePath = Path.Combine(_rootDir, path);
            filePath = filePath.Replace("/", "\\");
           return storage.OpenStream(filePath, (int)FileMode.Open, (int)FileAccess.Read);
        }
    }
}
