using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using GameLibrary.GameEngine;
using GameLibrary.Ulitilies;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using RPGVXLibrary.Input;

namespace RPGVXLibrary.Input
{
    public enum Keys
    {
        UP,
        Down,
        LEFT,
        RIGHT,
        A,
        B,
        C,
        D,
    }
    public enum KeyState
    {
        Up,
        Down,
    }

    public class KeyExpandState
    {
        private int downNumber;
        private KeyState lastState;
        private KeyState currentState;
        public Keys key;

        public KeyExpandState()
        {
            downNumber = 0;
            lastState = KeyState.Up;
            currentState = KeyState.Up;
        }
        public KeyState CurrentState
        {
            get
            {
                return currentState;
            }
            set
            {
                lastState = currentState;
                currentState = value;
                if ((currentState == lastState) && (currentState == KeyState.Down))
                    downNumber++;
                else if ((currentState != lastState) && (currentState == KeyState.Down))
                    downNumber = 0;
            }
        }
        public bool IsDown()
        {
            return currentState == KeyState.Down;
        }
        public bool IsUp()
        {
            return !IsDown();
        }
        public bool IsHold()
        {
         //   if (downNumber > 5)
         //       Debug.WriteLine("{0} downNumber is {1}",key,downNumber);
            return IsClicked() || ( IsDown() && downNumber > 5 && downNumber % 5 == 1);
        }
        public bool IsClicked()
        {
            if ((lastState == KeyState.Up && currentState == KeyState.Down && downNumber < 10))
                return true;
            else
                return false;
        }
        public bool IsPressed()
        {
            return (lastState == KeyState.Up && currentState == KeyState.Down);
        }


    }
    public class StickInputState
    {
        private KeyExpandState[] keyStates;
        public KeyState this[Keys key]
        {

            get { return keyStates[(int)key].CurrentState; }

            internal set { this.keyStates[(int)key].CurrentState = value; }
        }

        internal StickInputState(int numKeys)
        {
            keyStates = new KeyExpandState[numKeys];
            for (int i = 0; i < numKeys; i++)
            {
                keyStates[i] = new KeyExpandState();
                keyStates[i].key = (Keys)i;
            }
            
        }
        public bool IsKeyDown(Keys key)
        {
            return keyStates[(int)key].IsDown();
        }

        public bool IsKeyUp(Keys key)
        {
            return keyStates[(int)key].IsUp();
        }
        public bool IsKeyHold(Keys key)
        {
            return keyStates[(int)key].IsHold();
        }
        public bool IsKeyClicked(Keys key)
        {
            return keyStates[(int)key].IsClicked();
        }
        public bool IsKeyPressed(Keys key)
        {
            return keyStates[(int)key].IsPressed();
        }
        public void SetKeyDown(Keys key)
        {
            for (Keys k = Keys.UP; k <= Keys.D; k++)
            {
                if (k == key)
                    this[k] = KeyState.Down;
                else
                    this[k] = KeyState.Up;
            }
        }
        public void ReleaseKeys()
        {
            for (Keys k = Keys.UP; k <= Keys.D; k++)
            {
                this[k] = KeyState.Up;
            }
        }
    }

    public static class Input
    {

        private static StickInputState InputState = new StickInputState(8);
        private static Texture2D stickTexture;
        private static Texture2D stickBallTexture;
        private static Texture2D stickTextureKey;
        public static void Update()
        {
            VirtualThumbsticks.Update();

            if (VirtualThumbsticks.LeftThumbstick.Length() > .2f)
            {
                double angle;
                double radians;

                radians = Math.Atan2(
                    -VirtualThumbsticks.LeftThumbstick.Y,
                    VirtualThumbsticks.LeftThumbstick.X);
                angle = radians * (180 / Math.PI);

                if (angle > -45 && angle <= 45)
                    InputState.SetKeyDown(Keys.RIGHT);
                else if (angle > 45 && angle < 135)
                    InputState.SetKeyDown(Keys.UP);
                else if (angle > -135 && angle < -45)
                    InputState.SetKeyDown(Keys.Down);
                else
                    InputState.SetKeyDown(Keys.LEFT);
            }
            else
            {
                    InputState.ReleaseKeys();
            }

            if (VirtualThumbsticks.RightThumbstick.Length() > .3f)
            {
                double angle;
                double radians;

                radians = Math.Atan2(
                    VirtualThumbsticks.LeftThumbstick.Y,
                    VirtualThumbsticks.LeftThumbstick.X);
                angle = radians * (180 / Math.PI);

                if (angle > -45 && angle <= 45)
                    InputState.SetKeyDown(Keys.C);
                else if (angle > 45 && angle < 135)
                    InputState.SetKeyDown(Keys.B);
                else if (angle > -135 && angle < -45)
                    InputState.SetKeyDown(Keys.D);
                else
                    InputState.SetKeyDown(Keys.A);
            }


        }
        public static bool IsPressed(Keys key)
        {
            return InputState.IsKeyDown(key);
        }
        public static bool IsTrigger(Keys key)
        {
            return InputState.IsKeyClicked(key);
        }

        public static bool IsRepeat(Keys key)
        {
            return InputState.IsKeyHold(key);
        }

        public static void Draw(DrawManager dm, int frameCount)
        {
            stickTexture = dm.Content.Load<Texture2D>("Graphics\\System\\ThumbstickDirection");
            stickBallTexture = dm.Content.Load<Texture2D>("Graphics\\System\\ThumbstickBall");
            stickTextureKey = dm.Content.Load<Texture2D>("Graphics\\System\\ThumbstickKey");
            float scalefactor = 0.3f;

#if !VTSSHOW
            
            
            if (VirtualThumbsticks.LeftThumbstickCenter.HasValue)
            {
               Vector2 origenCenter = VirtualThumbsticks.LeftThumbstickCenter.Value;
               Vector2 offCenter = VirtualThumbsticks.LeftThumbstick;
 #else
              {


               Vector2 origenCenter = new Vector2(123, 286);
               Vector2 offCenter = new Vector2(0, 1);
#endif
               Vector2 ballCenter = origenCenter + 60f * offCenter;

                Matrix origenoffset = Matrix.CreateTranslation(-origenCenter.X, -origenCenter.Y, 0);
                Matrix scaleTranslation = Matrix.CreateScale(scalefactor);
                Matrix origenoffsetback = Matrix.CreateTranslation(origenCenter.X, origenCenter.Y, 0);


                dm.SpriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.LinearClamp,
                DepthStencilState.Default,
                RasterizerState.CullNone,
                null,
                origenoffset * scaleTranslation * origenoffsetback);

                dm.SpriteBatch.Draw(
                    stickTexture,
                    origenCenter - new Vector2(stickTexture.Width / 2f, stickTexture.Height / 2f),
                    Color.Orange);


                dm.SpriteBatch.Draw(
                    stickBallTexture,
                    ballCenter - new Vector2(stickBallTexture.Width / 2f, stickBallTexture.Height / 2f),
                    Color.Orange);



                dm.SpriteBatch.End();
            }

               if (VirtualThumbsticks.RightThumbstickCenter.HasValue)
            {
                Vector2 origenCenter = VirtualThumbsticks.RightThumbstickCenter.Value;
               Vector2 offCenter = VirtualThumbsticks.RightThumbstick;

               Vector2 ballCenter = origenCenter + 60f * offCenter;

                Matrix origenoffset = Matrix.CreateTranslation(-origenCenter.X, -origenCenter.Y, 0);
                Matrix scaleTranslation = Matrix.CreateScale(scalefactor);
                Matrix origenoffsetback = Matrix.CreateTranslation(origenCenter.X, origenCenter.Y, 0);


                dm.SpriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.LinearClamp,
                DepthStencilState.Default,
                RasterizerState.CullNone,
                null,
                origenoffset * scaleTranslation * origenoffsetback);

                dm.SpriteBatch.Draw(
                    stickTextureKey,
                    origenCenter - new Vector2(stickTexture.Width / 2f, stickTexture.Height / 2f),
                    Color.Orange);


                dm.SpriteBatch.Draw(
                    stickBallTexture,
                    ballCenter - new Vector2(stickBallTexture.Width / 2f, stickBallTexture.Height / 2f),
                    Color.Orange);



                dm.SpriteBatch.End();
            }
          
        }

    }
}
