using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameRGSSLibrary.Windows.GameEngine;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace GameRGSSLibrary.Windows.GameTest
{
    public class ExampleDrawContext: DrawContext
    {

        Vector3 eye;
        Vector3 up;
        Vector3 at;

        float fov;
        //camera properties
        float zNear;
        float zFar;

        BasicEffect basicEffect;
        DynamicVertexBuffer vertexBuffer;
        DynamicIndexBuffer indexBuffer;
        VertexPositionColor[] cube;
        float cubeRotation = 0.0f;
        static ushort[] cubeIndices =
    		{
    			0,2,1, // -x
    			1,2,3,

    			4,5,6, // +x
    			5,7,6,

    			0,1,5, // -y
    			0,5,4,

    			2,6,7, // +y
    			2,7,3,

    			0,4,6, // -z
    			0,6,2,

    			1,3,7, // +z
    			1,7,5,
    		};

        public ExampleDrawContext(DrawManager drawManager)
        {
            zNear = 0.001f;
            zFar = 1000.0f;
            fov = MathHelper.Pi * 70.0f / 180.0f;
            eye = new Vector3(0.0f, 0.7f, 1.5f);
            at = new Vector3(0.0f, 0.0f, 0.0f);
            up = new Vector3(0.0f, 1.0f, 0.0f);

            cube = new VertexPositionColor[8];
            cube[0] = new VertexPositionColor(new Vector3(-0.5f, -0.5f, -0.5f), new Color(0.0f, 0.0f, 0.0f));
            cube[1] = new VertexPositionColor(new Vector3(-0.5f, -0.5f, 0.5f), new Color(0.0f, 0.0f, 1.0f));
            cube[2] = new VertexPositionColor(new Vector3(-0.5f, 0.5f, -0.5f), new Color(0.0f, 1.0f, 0.0f));
            cube[3] = new VertexPositionColor(new Vector3(-0.5f, 0.5f, 0.5f), new Color(0.0f, 1.0f, 1.0f));
            cube[4] = new VertexPositionColor(new Vector3(0.5f, -0.5f, -0.5f), new Color(1.0f, 0.0f, 0.0f));
            cube[5] = new VertexPositionColor(new Vector3(0.5f, -0.5f, 0.5f), new Color(1.0f, 0.0f, 1.0f));
            cube[6] = new VertexPositionColor(new Vector3(0.5f, 0.5f, -0.5f), new Color(1.0f, 1.0f, 0.0f));
            cube[7] = new VertexPositionColor(new Vector3(0.5f, 0.5f, 0.5f), new Color(1.0f, 1.0f, 1.0f));

            vertexBuffer = new DynamicVertexBuffer(drawManager.GraphicsDevice, typeof(VertexPositionColor), 8, BufferUsage.WriteOnly);
            indexBuffer = new DynamicIndexBuffer(drawManager.GraphicsDevice, typeof(ushort), 36, BufferUsage.WriteOnly);

            basicEffect = new BasicEffect(drawManager.GraphicsDevice); //(device, null);
            basicEffect.LightingEnabled = false;
            basicEffect.VertexColorEnabled = true;
            basicEffect.TextureEnabled = false;

            drawManager.GraphicsDeviceManager.SupportedOrientations = DisplayOrientation.LandscapeLeft | DisplayOrientation.LandscapeRight;
        }
        public override void Draw(int frameCount)
        {
            var game = RGSSEngine.GetGame();
            // Compute camera matrices.
            Matrix View = Matrix.CreateLookAt(eye, at, up);

            Matrix Projection = Matrix.CreatePerspectiveFieldOfView(fov, game.GraphicsDevice.Viewport.AspectRatio, zNear, zFar);
            cubeRotation += (0.0025f) * (float)(1000.0 / RGSSEngine.GetGame().GameControler.FrameRate);
            Matrix World = Matrix.CreateRotationY(cubeRotation);
            // TODO: Add your drawing code here

            vertexBuffer.SetData(cube, 0, 8, SetDataOptions.Discard);
            indexBuffer.SetData(cubeIndices, 0, 36, SetDataOptions.Discard);

            GraphicsDevice device = basicEffect.GraphicsDevice;
            device.SetVertexBuffer(vertexBuffer);
            device.Indices = indexBuffer;

            basicEffect.View = View;
            basicEffect.Projection = Projection;
            basicEffect.World = World;
            foreach (EffectPass pass in basicEffect.CurrentTechnique.Passes)
            {
                pass.Apply();
                device.DrawIndexedPrimitives(PrimitiveType.TriangleList, 0, 0, 8, 0, 36);
            }
            base.Draw(frameCount);
        }
    }
}
