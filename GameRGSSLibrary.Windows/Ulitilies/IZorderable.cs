using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.Ulitilies
{
    interface IZorderable
    {
        int Z { get; set; }
        void InsertInZorder(LinkNode header);
    }
}
