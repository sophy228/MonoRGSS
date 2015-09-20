using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Storage;
using Windows.Storage;
using Windows.Storage.Search;

namespace GameLibrary.RGSS
{
    internal enum StorageType
    {
        LOCAL,
        USERDATA
    }



    public class Storage
    {
        public static Storage LocalStorage = new Storage(StorageType.LOCAL);
        public static Storage UserStorage = new Storage(StorageType.USERDATA);
        
        private StorageType type;

        private string rootPath;
        private StorageFolder rootFolder;
        private StorageFolder currentFolder;
        
        private Storage(StorageType storagetype)
        {
            type = storagetype;
    

                CreateRootFolder("TestGame", 0);

        }

       
        private void CreateRootFolder(string gameName,int index)
        {
            if (type == StorageType.USERDATA)
            {
                rootPath = Path.Combine(gameName, index.ToString());
                var folder = ApplicationData.Current.LocalFolder;
                var task = folder.CreateFolderAsync(rootPath, CreationCollisionOption.OpenIfExists);
                task.AsTask().Wait();
                currentFolder = rootFolder = task.GetResults();
            }
            else
            {
                currentFolder = rootFolder = Windows.ApplicationModel.Package.Current.InstalledLocation;
            }
        }

        public string FromHostPath(string path)
        {
            if (path.StartsWith("."))
                return path.Substring(1);
            else
                return path;
        }

        public string ToHostPath(string path)
        {
            var s = Path.Combine(".", path);
            return s;
        }


        private Stream OpenFile(string file, FileMode fileMode, FileAccess fileAccess)
        {
            return OpenFile(file, fileMode, fileAccess, FileShare.ReadWrite);
        }

        private Stream OpenFile(string file, FileMode fileMode, FileAccess fileAccess, FileShare fileShare)
        {
            if (string.IsNullOrEmpty(file))
                throw new ArgumentNullException("Parameter file must contain a value.");

            // relative so combine with our path
            var filePath = file;
            var folder = currentFolder;
            if (fileMode == FileMode.Create || fileMode == FileMode.CreateNew)
            {
                return folder.OpenStreamForWriteAsync(filePath, CreationCollisionOption.ReplaceExisting).GetAwaiter().GetResult();
            }
            else if (fileMode == FileMode.OpenOrCreate || fileMode == FileMode.Open)
            {
                if (fileAccess == FileAccess.Read && FileExists(file))
                    return folder.OpenStreamForReadAsync(filePath).GetAwaiter().GetResult();
                else
                {
                    // Not using OpenStreamForReadAsync because the stream position is placed at the end of the file, instead of the beginning
                    var f = folder.CreateFileAsync(filePath, CreationCollisionOption.OpenIfExists).AsTask().GetAwaiter().GetResult();
                    return f.OpenAsync(FileAccessMode.ReadWrite).AsTask().GetAwaiter().GetResult().AsStream();
                }
            }
            else if (fileMode == FileMode.Truncate)
            {
                return folder.OpenStreamForWriteAsync(filePath, CreationCollisionOption.ReplaceExisting).GetAwaiter().GetResult();
            }
            else
            {
                //if (fileMode == FileMode.Append)
                // Not using OpenStreamForReadAsync because the stream position is placed at the end of the file, instead of the beginning
                folder.CreateFileAsync(filePath, CreationCollisionOption.OpenIfExists).AsTask().GetAwaiter().GetResult().OpenAsync(FileAccessMode.ReadWrite).AsTask().GetAwaiter().GetResult().AsStream();
                var f = folder.CreateFileAsync(filePath, CreationCollisionOption.OpenIfExists).AsTask().GetAwaiter().GetResult();
                return f.OpenAsync(FileAccessMode.ReadWrite).AsTask().GetAwaiter().GetResult().AsStream();
            }

        }				
        public Stream OpenStream(string name, int mode, int access)
        {
            name = FromHostPath(name);
            FileMode m = (FileMode)mode;
            FileAccess a = (FileAccess)access;
            return OpenFile(name, m, a);
        }

        public bool FileExists(string file)
        {
            
            if (string.IsNullOrEmpty(file))
                throw new ArgumentNullException("Parameter file must contain a value.");
            file = FromHostPath(file);
            // relative so combine with our path
            var filePath = file;

            var folder = currentFolder;
            // GetFile returns an exception if the file doesn't exist, so we catch it here and return the boolean.
            try
            {
                var existsFile = folder.GetFileAsync(filePath).GetAwaiter().GetResult();
                return existsFile != null;
            }
            catch
            {
                return false;
            }
        }


        public bool DirectoryExists(string path)
        {
            
            if (string.IsNullOrEmpty(path))
                throw new ArgumentNullException("Parameter dir must contain a value.");
            path = FromHostPath(path);
            if (path == string.Empty)
                return true;
            var folder = currentFolder;
            // GetFile returns an exception if the file doesn't exist, so we catch it here and return the boolean.
            try
            {
                var existsFile = folder.GetFolderAsync(path).GetAwaiter().GetResult();
                return existsFile != null;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public void CreateDirectory(string path)
        {
            path = FromHostPath(path);
            var folder = currentFolder;
            folder.CreateFolderAsync(path,CreationCollisionOption.OpenIfExists).AsTask().Wait();
        }

        public void DeleteDirectory(string path)
        {
            path = FromHostPath(path);
            var folder = currentFolder;
            var deletingfolder = folder.GetFolderAsync(path).GetAwaiter().GetResult();
            deletingfolder.DeleteAsync().AsTask().Wait();
        }

        public string[] GetDirectoryNames(string path, string searchPattern)
        {
            path = FromHostPath(path);
            var folder = currentFolder;
        
 #if WINDOWS      
            var options = new QueryOptions(CommonFileQuery.DefaultQuery, new[] { searchPattern });
            var query = folder.CreateFolderQueryWithOptions(options);

            var query = folder.CreateFolderQuery();

            var folders = query.GetFoldersAsync().AsTask().GetAwaiter().GetResult();
#else
            var folders = folder.GetFoldersAsync().AsTask().GetAwaiter().GetResult();
#endif
            var nameList = folders.Select<StorageFolder, string>(e => e.Name).ToList();
            List<string> names = new List<string>();
            foreach(var name in nameList)
            {
                names.Add (ToHostPath(Path.Combine(path, name)));
            }


            return names.ToArray();
        }

        public string[] GetFileNames(string path, string searchPattern)
        {
            path = FromHostPath(path);
            var folder = currentFolder;
#if WINDOWS
            var options = new QueryOptions(CommonFileQuery.OrderByName, new[] { searchPattern });
            var query = folder.CreateFileQueryWithOptions(options);
            var files = query.GetFilesAsync().AsTask().GetAwaiter().GetResult();
            var nameList = files.Select<StorageFile, string>(e => e.Name).ToList();
            List<string> names = new List<string>();
            foreach (var name in nameList)
            {
                names.Add(ToHostPath(Path.Combine(path, name)));
            }
#else
            var files = folder.GetFilesAsync(CommonFileQuery.DefaultQuery).AsTask().GetAwaiter().GetResult();
            var nameList = files.Select<StorageFile, string>(e => e.Name).ToList();
            List<string> names = new List<string>();
            foreach (var name in nameList)
            {
                names.Add(ToHostPath(Path.Combine(path, name)));
            }
#endif
            return names.ToArray();
        }

        public string[] GetFileDirectoryNames(string path, string searchPattern)
        {
            var files = GetFileNames(path, searchPattern);
            var dirs = GetDirectoryNames(path, searchPattern);
            List<string> s = new List<string>();
            foreach(var name in files)
            {
                s.Add(name);
            }
            foreach(var name in dirs)
            {
                s.Add(name);
            }
            return s.ToArray();
        }

        public DateTime GetFileMTime(string path)
        {
            path = FromHostPath(path);
            var folder = currentFolder;
            // GetFile returns an exception if the file doesn't exist, so we catch it here and return the boolean.
            var existsFile = folder.GetFileAsync(path).GetAwaiter().GetResult();
            var properteies =  existsFile.GetBasicPropertiesAsync().GetAwaiter().GetResult();
            return properteies.DateModified.LocalDateTime;
        }

    }
}
