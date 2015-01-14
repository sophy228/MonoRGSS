using GameLibrary.GameEngine;

namespace GameLibrary.RGSS
{    
    public class RGSSDrawContext : DrawContext
    {
        //private RGSSDrawNode _drawDefaultViewportHead;
        public RGSSDrawContext(DrawManager dm):base(dm)
        {
            //_drawDefaultViewportHead = new RGSSDrawNode(null);
        }

#if false
        private RGSSDrawNode findDrawNodeHead(Viewport viewport)
        {
            if (viewport == null)
                return _drawDefaultViewportHead;
            else
            {
                RGSSDrawNode newNode = new RGSSDrawNode(viewport);
                RGSSDrawNode currentHead = _drawDefaultViewportHead.Next;
                RGSSDrawNode previoustHead = _drawDefaultViewportHead;
                while(currentHead != null)
                {
                    if (viewport.Z < currentHead.Viewport.Z)
                    {
                        newNode.Next = currentHead;
                        previoustHead.Next = newNode;
                        return newNode;
                    }
                    previoustHead = currentHead;
                    currentHead = previoustHead.Next;
                }
                previoustHead.Next = newNode;
                return newNode;
            }
        }

        public void AddSprit(Viewport viewport, Sprite sprite)
        {
            RGSSDrawNode toBeInsertedHead = findDrawNodeHead(viewport);
            RGSSDrawElement newElement = new RGSSDrawElement(sprite);
            RGSSDrawElement currentHead = toBeInsertedHead.ElementHead.Next;
            RGSSDrawElement previoustHead = toBeInsertedHead.ElementHead;
            while (currentHead != null)
            {
                if (sprite.Z < currentHead.Sprite.Z)
                {
                    newElement.Next = currentHead;
                    previoustHead.Next = newElement;
                    break;
                }
                previoustHead = currentHead;
                currentHead = previoustHead.Next;
            }
            previoustHead.Next = newElement;
        }
#endif
    }
}
