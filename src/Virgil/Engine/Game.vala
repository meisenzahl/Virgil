using SDL;
using SDL.Video;
using SDLGraphics;

using Virgil.Graphics;

namespace Virgil.Engine {
    public class Game {
        public int window_width;
        public int window_height;
        public string window_title;

        public bool running;

        public Window window;
        public Renderer? renderer;

        public void initialise (int width, int height, string title) {
            window_width = width;
            window_height = height;
            window_title = title;

            running = true;

            window = new Window (window_title, Window.POS_CENTERED, Window.POS_CENTERED, window_width, window_height, WindowFlags.SHOWN);
            renderer = Video.Renderer.create (window, -1, RendererFlags.ACCELERATED | RendererFlags.PRESENTVSYNC);
        }

        public virtual void run () { }

        public virtual void draw () { }

        public void events () {
            Event event;

            while (Event.poll (out event) == 1) {
                switch (event.type) {
                    case EventType.QUIT:
                        running = false;
                    break;
                }
            }
        }
    }
}
