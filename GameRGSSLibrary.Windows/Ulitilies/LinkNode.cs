using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameLibrary.Ulitilies
{
    public class LinkNodeEnumerator : IEnumerator<LinkNode>
    {
        private LinkNode mHead;

        private LinkNode current;
        public LinkNodeEnumerator(LinkNode head)
        {
            mHead = head;
            current = mHead;
        }

        public LinkNode Current
        {
            get { return current; }
        }
        public bool MoveNext()
        {
            current = current.Next;
            if (current != mHead)
            {

                return true;
            }
            else
                return false;
        }

        public void Reset()
        {
            current = mHead;
        }

        public void Dispose()
        {
            //do noting;
        }

        object IEnumerator.Current
        {
            get { throw new NotImplementedException(); }
        }
    }
    public  class LinkNode : IEnumerable<LinkNode>
    {
        internal LinkNode Next;
        internal LinkNode Prev;
        private LinkNodeEnumerator enumerator;
        public LinkNode()
        {
            Next = Prev = this;
        }

        private static void __list_add(LinkNode newnode, LinkNode prev, LinkNode next)
        {
            next.Prev = newnode;
            newnode.Next = next;
            newnode.Prev = prev;
            prev.Next = newnode;
        }

        private static void __list_del(LinkNode prev, LinkNode next)
        {
            next.Prev = prev;
            prev.Next = next;
        }

        public static void ListAdd(LinkNode newnode, LinkNode head)
        {
            __list_add(newnode, head, head.Next);
        }

        public static void ListAddTail(LinkNode newnode, LinkNode head)
        {
            __list_add(newnode, head.Prev, head);
        }

        public static void ListDel(LinkNode node)
        {
            __list_del(node.Prev, node.Next);
            node.Next = null;
            node.Prev = null;
        }


        public IEnumerator<LinkNode> GetEnumerator()
        {
            return new LinkNodeEnumerator(this); ;
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return new LinkNodeEnumerator(this);
        }
    }
}
