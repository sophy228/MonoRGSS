using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Scripting.Hosting;
using IronRuby;
using IronRuby.Runtime;
using Microsoft.Scripting.Hosting.Providers;
using System.IO;
using Microsoft.Scripting;
using System.Reflection;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
namespace RGSS.Libraries
{
    public class DlrHost : ScriptHost
    {
        private readonly PlatformAdaptationLayer pal = new PAL();

        public class PAL : PlatformAdaptationLayer
        {
            public override Assembly LoadAssembly(string name)
            {
                if (name.StartsWith("IronRuby,", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(Ruby).GetTypeInfo().Assembly;
                }
                else if (name.StartsWith("IronRuby.Libraries,", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(IronRuby.Builtins.Integer).GetTypeInfo().Assembly;
                }
                else if (name.StartsWith("IronRuby.StandardLibrary.Zlib", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(IronRuby.StandardLibrary.Zlib.Zlib).GetTypeInfo().Assembly;
                }

                return typeof(RubyEngine).GetTypeInfo().Assembly;

                //return base.LoadAssembly(name);
            }

            public override Stream OpenFileStream(string path, FileMode mode = FileMode.OpenOrCreate, FileAccess access = FileAccess.ReadWrite, FileShare share = FileShare.Read, int bufferSize = 8192)
            {
                var storage = GameLibrary.RGSS.Storage.UserStorage;
                return storage.OpenStream(path, (int)mode, (int)access);
            }

            public override bool FileExists(string path)
            {
                var storage = GameLibrary.RGSS.Storage.UserStorage;
                return storage.FileExists(path);
            }
            public override bool DirectoryExists(string path)
            {
                var storage = GameLibrary.RGSS.Storage.UserStorage;
                return storage.DirectoryExists(path);
            }

            public override string[] GetFileSystemEntries(string path, string searchPattern, bool includeFiles, bool includeDirectories)
            {
                var storage = GameLibrary.RGSS.Storage.UserStorage;
                if (includeFiles && includeDirectories)
                {
                    return storage.GetFileDirectoryNames(path, searchPattern);
                }
                if (includeFiles)
                {
                    return storage.GetFileNames(path, searchPattern);
                }
                if (includeDirectories)
                {
                    return storage.GetDirectoryNames(path, searchPattern);
                }
                return new string[]{};
            }

            public override DateTime GetFileMTime(string path)
            {
                var storage = GameLibrary.RGSS.Storage.UserStorage;
                return storage.GetFileMTime(path);
            }
        }

        public override PlatformAdaptationLayer PlatformAdaptationLayer
        {
            get { return pal; }
        }
    }

    class ScriptFile
    {
       public  string fileName;
       public string fileContext;
       public ScriptFile(string file, string context)
       {
           fileName = file;
           fileContext = context;
       }
    }

    public class BootLoader
    {
        private List<ScriptFile> scriptFiles;
        ScriptEngine engine;
        private string scritptText;
        private CompiledCode compieldCode;
        private string rootPath;
        public BootLoader(ScriptEngine eng, string root="")
        {
            engine = eng;
            scriptFiles = new List<ScriptFile>();
            rootPath = root;
            PreLoadRPGModule();
            
        }
        
        public CompiledCode Code
        {
            get
            {
                return compieldCode;
            }
        }

        public void AddScriptFile(MutableString name, MutableString context)
        {

            string fileName = name.ToString();
            context.ForceEncoding(RubyEncoding.UTF8);
            string fileContext = context.ToString();
            scriptFiles.Add(new ScriptFile(fileName, fileContext));
        }


        public void Compile()
        {
            compieldCode = engine.CreateScriptSourceFromString(scritptText + GetScriptText()).Compile();
        }

        public void Run()
        {
            Storage storage = Storage.LocalStorage;
            string path = Path.Combine(rootPath, "init.rb");
            using (var stream = storage.OpenStream(path, (int)FileMode.Open, (int)FileAccess.Read))
            {
                var  scope = engine.CreateScope(); 
                scope.SetVariable("bootloader", this);
                StreamReader reader = new StreamReader(stream);
                 string text = reader.ReadToEnd();
                 engine.Execute<object>(text,scope);
            }
        }

        private string GetScriptText()
        {
            StringBuilder sb = new StringBuilder();
            foreach(var sf in scriptFiles)
            {
                sb.AppendLine(sf.fileContext);
            }
            return sb.ToString();
        }
        
        private void PreLoadRPGModule()
        {
            Storage storage = Storage.LocalStorage;
            string path = Path.Combine(rootPath, "RPG.rb");
            using (var stream = storage.OpenStream(path, (int)FileMode.Open, (int)FileAccess.Read))
            {
                StreamReader reader = new StreamReader(stream);
                scritptText = reader.ReadToEnd();
                scritptText += "\n";
            }
        }

        
    }

    public class RubyResult
    {
        public object Result;
        public string Message;
    }

    public class RubyEngine
    {
        private  ScriptEngine engine;
        private  ScriptScope scope;
        private string scritptText;
       
        private BootLoader bootloader;

        private bool booted;
        public RubyResult Result;
        

        public RubyEngine(string rootpath)
        {
            RubyEngineInit(rootpath);
            Result = new RubyResult();
        }

        private void RubyEngineInit(string rootpath="")
        {
            var setup = new ScriptRuntimeSetup();
            setup.HostType = typeof(DlrHost);
            setup.AddRubySetup();
            var runtime = Ruby.CreateRuntime(setup);
            engine = Ruby.GetEngine(runtime);
            scope = engine.CreateScope();
            bootloader = new BootLoader(engine,rootpath);
            RubyContext context = (RubyContext)HostingHelpers.GetLanguageContext(engine);
            context.Loader.LoadAssembly("RGSS.Libraries", "RGSS.Libraries.Builtins.BuiltinsLibraryInitializer", true, true);
            context.Loader.LoadAssembly("IronRuby.StandardLibrary.Zlib", "IronRuby.StandardLibrary.Zlib.ZlibLibraryInitializer", true, true);
           // bootloader.Run();
            
        }


     
        private void BootCode()
        {
            if (!booted)
            {
                bootloader.Run();
            }
        }


        public object RunRuby()
        {
            BootCode();
            string txt = scritptText;
            string outputText;
            object result;
            using (var stream = new MemoryStream())
            {
                engine.Runtime.IO.SetOutput(stream, Encoding.UTF8);
                try
                {
                    result = bootloader.Code.Execute(scope);
                }
                catch (Exception ex)
                {
                    result = ex;
                }

                var a = stream.ToArray();
                outputText = Encoding.UTF8.GetString(a, 0, a.Length);
                Result.Message = outputText;
            }
            Result.Result = result;
            return Result;
        }

    }
}
