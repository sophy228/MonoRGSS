using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;
using Microsoft.Scripting.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Database", Inherits = typeof(object))]
    public class RubyDatabase:RubyObject
    {
        private DataBase db;
        public RubyDatabase(RubyClass/*!*/ cls)
            :base(cls)
        {

        }
        public RubyDatabase(RubyClass/*!*/ cls,MutableString/*!*/ dirname)
            :base(cls)
        {
            string strName = this.ImmediateClass.Context.DecodePath(dirname);
            db = new DataBase(strName);
        }

        [RubyConstructor]
        public static RubyDatabase Create(RubyClass/*!*/ self, [NotNull]MutableString/*!*/ dirname)
        {
            return new RubyDatabase(self, dirname);
        }
        [RubyMethod("initialize", RubyMethodAttributes.PrivateInstance)]
        public static RubyDatabase/*!*/ Reinitialize(RubyDatabase/*!*/ self, [NotNull]MutableString/*!*/ dirname)
        {
            string strName = self.ImmediateClass.Context.DecodePath(dirname);
            self.db = new DataBase(strName);
            return self;
        }

        [RubyMethod("open")]
        public static RubyIO Open(RubyDatabase self)
        {
           // RubyIO io = new RubyIO(self.ImmediateClass.Context, self.db.GetStream(), IOMode.ReadOnly);
            RubyIO io = null;
            return io;
        }
    }
}
