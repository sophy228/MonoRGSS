using System;
using System.Text;
using Microsoft.Scripting.Hosting;
using IronRuby;
using IronRuby.Runtime;
using Microsoft.Scripting.Hosting.Providers;
using System.IO;
using Microsoft.Scripting;
using System.Reflection;
using System.Threading.Tasks;
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

                return typeof(RubyEngine).GetTypeInfo().Assembly;

                //return base.LoadAssembly(name);
            }
        }

        public override PlatformAdaptationLayer PlatformAdaptationLayer
        {
            get { return pal; }
        }
    }
    public class RubyEngine
    {
        private  ScriptEngine engine;
        private  ScriptScope scope;
        private string scritptText;

        public RubyEngine()
        {
            RubyEngineInit();
        }

         private void RubyEngineInit()
        {
            var setup = new ScriptRuntimeSetup();
            setup.HostType = typeof(DlrHost);
            setup.AddRubySetup();
             
            var runtime = Ruby.CreateRuntime(setup);
            engine = Ruby.GetEngine(runtime);
            scope = engine.CreateScope();
            RubyContext context = (RubyContext)HostingHelpers.GetLanguageContext(engine);
            context.Loader.LoadAssembly("RGSS.Libraries", "RGSS.Libraries.Builtins.BuiltinsLibraryInitializer", true, true);
            PreLoadRPGModule();
        }
         private async Task<Stream> OpenStreamAsync(string name)
         {
             var package = Windows.ApplicationModel.Package.Current;

             try
             {
                 var storageFile = await package.InstalledLocation.GetFileAsync(name);
                 var randomAccessStream = await storageFile.OpenReadAsync();
                 return randomAccessStream.AsStreamForRead();
             }
             catch (IOException)
             {
                 // The file must not exist... return a null stream.
                 return null;
             }
         }
        private void PreLoadRPGModule()
        {
            var stream = Task.Run(() => OpenStreamAsync(@"RGSS.Libraries\RubyScript\RPG.rb").Result).Result;
            if (stream == null)
                throw new FileNotFoundException(@"RGSS.Libraries\RubyScript\RPG.rb");
            StreamReader reader = new StreamReader(stream);
            scritptText = reader.ReadToEnd();
            scritptText += "\n";
            stream.Dispose();
        }

        public void ReadRPGScript(string name)
        {
            var stream = Task.Run(() => OpenStreamAsync(name).Result).Result;
            if (stream == null)
                throw new FileNotFoundException(name);
            StreamReader reader = new StreamReader(stream);
            scritptText += reader.ReadToEnd();
            scritptText += "\n";
            stream.Dispose();
        }

        public int RunRuby()
        {

            string txt = scritptText;
            string outputText;
            object result;
            using (var stream = new MemoryStream())
            {
                engine.Runtime.IO.SetOutput(stream, Encoding.UTF8);
                try
                {
                    result = engine.Execute<object>(txt, scope);
                }
                catch (Exception ex)
                {
                    result = ex;
                }

                var a = stream.ToArray();
                outputText = Encoding.UTF8.GetString(a, 0, a.Length);
            }
            return outputText.Length;
        }

    }
}
