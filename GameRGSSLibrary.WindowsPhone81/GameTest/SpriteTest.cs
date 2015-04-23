using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameLibrary.RGSS;

namespace GameLibrary.GameTest
{
    public class SpriteTest:Sprite
    {

        public SpriteTest(Viewport vp1)
            : base(vp1)
        {

        }
        public override void Update()
        {
            base.Update();
            int frame = Graphics.FrameCount;
          //  if (Graphics.FrameCount % 5 == 0)
                this.X += 20;
        }
    }
}
