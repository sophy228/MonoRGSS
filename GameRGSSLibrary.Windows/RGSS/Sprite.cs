using System.Diagnostics;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;

namespace GameLibrary.RGSS
{
    public class Sprite : LinkNode, IZorderable
    {
        private int z;
        private Viewport _viewport;

        private int id;
        internal Sprite(Viewport viewport)
        {
            _viewport = viewport;
            id = SpriteFactory.AllocateId();
        }

        public int Z
        {
            get
            {
                return z;
            }
            set
            {
                LinkNode.ListDel(this);
                z = value;
                InsertInZorder(_viewport.SpriteHeader);
            }
        }

        public void InsertInZorder(LinkNode header)
        {
            foreach (Sprite n in header)
            {
                if (this.Z >= n.Z)
                {
                    LinkNode.ListAddTail(this, n);
                    return;
                }
            }
            LinkNode.ListAddTail(this, header);
        }

        public void Draw(DrawManager dm, int frameCount)
        {
            Debug.WriteLine(string.Format("Sprinte#{0}- Z:({1}), draw@frameCount:{2}",
                             id, Z, frameCount));
        }



    }

    public class SpriteFactory
    {
        private static int id;
        public static Sprite Create(Viewport vp)
        {
            Sprite sp = new Sprite(vp);
            sp.InsertInZorder(vp.SpriteHeader);
            return sp;
        }

        public static int AllocateId()
        {
            return id++;
        }
    }
}
