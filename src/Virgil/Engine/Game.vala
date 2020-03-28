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
        public static Renderer? renderer;

        public FramerateManager framerate;

        public void initialise (int window_width, int window_height, string window_title) {
            this.window_width = window_width;
            this.window_height = window_height;
            this.window_title = window_title;

            running = true;

            window = new Window (window_title, Window.POS_CENTERED, Window.POS_CENTERED, window_width, window_height, WindowFlags.SHOWN);
            renderer = Renderer.create (window, -1, RendererFlags.ACCELERATED | RendererFlags.PRESENTVSYNC);
            framerate = FramerateManager();
            framerate.init ();
        }

        public void run () {
            framerate.run ();

            events ();
            update ();
            draw ();
        }

        public virtual void update () { }

        public virtual void draw () { }

        public void events () {
            Event event;

            while (Event.poll (out event) == 1) {
                switch (event.type) {
                    case EventType.QUIT:
                        running = false;
                    break;

                    case EventType.KEYDOWN:

                    break;
                }
            }
        }
    }
}
