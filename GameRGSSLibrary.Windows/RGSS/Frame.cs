using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using GameLibrary.GameEngine;
using Microsoft.Xna.Framework.Graphics;

namespace GameLibrary.RGSS
{
    public class Frame
    {
        private RenderTarget2D renderTexture;
        private DrawContext drawContext;

        internal Frame(DrawContext context)
        {
            drawContext = context;
            var drm = drawContext.DrawManager;
            renderTexture = new RenderTarget2D(drm.GraphicsDevice, drawContext.DefaultWindowRect.Width, drawContext.DefaultWindowRect.Height, 
                false, SurfaceFormat.Color, DepthFormat.None, 0, RenderTargetUsage.PreserveContents);
        }

        public void Dispose()
        {
            renderTexture.Dispose();
        }
        
        public RenderTarget2D RenderTexture
        {
            get
            {
                return renderTexture;
            }
        }
    }

    public class FrameBuffer
    {
        private ConcurrentQueue<Frame> freeFrameQueue;
        private ConcurrentQueue<Frame> renderFrameQueue;
        private AutoResetEvent frameFreed;
        public AutoResetEvent  renderFrameReady;
        private Frame freezeFrame;
        
        public bool IsEmpty
        {
            get
            {
                return renderFrameQueue.IsEmpty;
            }
        }

        public FrameBuffer(DrawContext context, int bufferSize)
        {
            freeFrameQueue = new ConcurrentQueue<Frame>();
            renderFrameQueue = new ConcurrentQueue<Frame>();
            for(int i = 0; i < bufferSize; i++)
            {
                Frame frame = new Frame(context);
                freeFrameQueue.Enqueue(frame);
            }
            frameFreed = new AutoResetEvent(false);
            renderFrameReady = new AutoResetEvent(false);
        }

        public Frame AllocateFrame()  //in Rgss thread
        {
            Frame frame;
            while(!freeFrameQueue.TryDequeue(out frame))
            {
                frameFreed.WaitOne();
            }
            return frame;
        }

        public void ReturnFrame(Frame frame) //in Rgss thread
        {
            renderFrameQueue.Enqueue(frame);
            renderFrameReady.Set();
        }

        public Frame GetRenderFrame()  //in Game thread
        {
            Frame frame;
            while(!renderFrameQueue.TryDequeue(out frame))
            {
                renderFrameReady.WaitOne();
            }
            return frame;
        }

        public void ReleaseFrame(Frame frame)  //in Game thread
        {
            freeFrameQueue.Enqueue(frame);
            frameFreed.Set();
        }

        public void FreezeBuffer()
        {

        }
    }
}
