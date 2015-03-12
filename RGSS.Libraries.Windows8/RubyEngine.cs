using System;
using System.Text;
using Microsoft.Scripting.Hosting;
using IronRuby;
using IronRuby.Runtime;
using Microsoft.Scripting.Hosting.Providers;
using System.IO;
using Microsoft.Scripting;
using System.Reflection;
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
        }

        public int RunRuby()
        {
           string txt = @"
  rect = Rect.new(0,0,30,40)
  vp1 = Viewport.new(1,2,100,300)
  vp1.z = 8
  vp2 = Viewport.new(rect)
  vp2.z = 3
  sp1 = Sprite.new(vp1)
  sp2 = Sprite.new(vp2)
  bp2 = Bitmap.new(100,100)
  bp3 = Bitmap.new(""Graphic/Faces/Actor1"")
  color2 = Color.new(255,0,0)
  bp2.fill_rect(0,0,100,100,color2)
  sp2.bitmap = bp2
  sp3 = Sprite.new
sp3.bitmap = bp3
  vp1.dispose
  Graphics.freeze
  while true do 
  Graphics.update
sp3.x = (sp3.x + 20) % 1000
  end";
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
