using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;
using IronRuby.Builtins;
using IronRuby.Runtime;

namespace RGSS.Libraries.Builtins
{
    [RubyClass("Table", Inherits = typeof(object), Extends = typeof(Table))]
    public static class RubyTableOps
    {
        [RubyConstructor]
        public static Table CreateTable(RubyClass self, int xsize, [Optional] int ysize, [Optional] int zsize)
        {
            return new Table(xsize, ysize, zsize);
        }

        [RubyConstructor]
        public static Table CreateTable(RubyClass self)
        {
            return new Table();
        }

        [RubyMethod("xsize")]
        public static int GetXsize(Table self)
        {
            return self.XSize;
        }

        [RubyMethod("ysize")]
        public static int GetYsize(Table self)
        {
            return self.YSize;
        }

        [RubyMethod("zsize")]
        public static int GetZsize(Table self)
        {
            return self.ZSize;
        }

        [RubyMethod("resize")]
        public static void Reseize(Table self, int xsize, [Optional] int ysize, [Optional] int zsize)
        {
            self.Resize(xsize, ysize, zsize);
        }

        [RubyMethod("_load", RubyMethodAttributes.PublicSingleton)]
        public static Table Load(RubyContext/*!*/ context, RubyClass/*!*/ self, [DefaultProtocol]MutableString/*!*/ str)
        {
            Table table = Table.LoadTable(str.ConvertToBytes());
            return table;
        }

        [RubyMethod("_dump")]
        public static MutableString Dump(RubyContext/*!*/ context, Table/*!*/ self, [Optional]int depth)
        {
            var buffer = Table.Store(self);
            return MutableString.CreateBinary(buffer.ToArray());
        }
    }
}
