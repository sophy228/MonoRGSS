using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.GameEngine
{
    public class RGSSContent
    {
        private ContentManager _content;
        public RGSSContent(ContentManager content)
        {
            _content = content;
        }

        public T Load<T>(string path)
        {
            try
            {
                return _content.Load<T>(path);
            }
            catch(Exception e)
            {
                return default(T);
            }
        }

        public void LoadContent()
        {
            //todo;
            _content.Unload();
        }
    }
}
