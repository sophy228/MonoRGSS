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
        private string _path;
        public DataBase(string path)
        {
            _path = @"GameLibrary/"+path;
            _path = _path.Replace("/", "\\");
        }

        private async Task<Stream> OpenStreamAsync(string name)
        {
            var package = Windows.ApplicationModel.Package.Current;

            try
            {
                var storageFile = await package.InstalledLocation.GetFileAsync(_path);
                var randomAccessStream = await storageFile.OpenReadAsync();
                return randomAccessStream.AsStreamForRead();
            }
            catch (Exception ex)
            {
                // The file must not exist... return a null stream.
                Debug.WriteLine(ex.Message);
                return null;
            }
        }
        public Stream GetStream()
        {
            var stream = Task.Run(() => OpenStreamAsync(_path).Result).Result;
            return stream;
        }
    }
}
