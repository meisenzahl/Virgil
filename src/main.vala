using SDL;
using SDLGraphics;

public class VGL : Object {
    private const int WINDOW_WIDTH = 640;
    private const int WINDOW_HEIGHT = 360;

    private const int REFRESH_DELAY = 1000;

    private int timer = 10;

    private SDL.Video.Window window;
    private SDL.Video.Renderer? renderer;

    public void run () {
        initialise_video ();

        while (timer > 0) {
            render ();

            SDL.Timer.delay (REFRESH_DELAY);

            timer -= 1;
        }
    }

    private void initialise_video () {
        window = new SDL.Video.Window ("VGL (Vala Game Library)", SDL.Video.Window.POS_CENTERED, SDL.Video.Window.POS_CENTERED, WINDOW_WIDTH, WINDOW_HEIGHT, SDL.Video.WindowFlags.SHOWN);
        renderer = Video.Renderer.create (window, -1, SDL.Video.RendererFlags.ACCELERATED | SDL.Video.RendererFlags.PRESENTVSYNC);
    }

    private void render () {
        int width;
        int height;

        window.get_size (out width, out height);

        int16 x = (int16)width / 2;
        int16 y = (int16)height / 2;

        uint32 colour = uint32.MAX;

        Rectangle.fill_color (this.renderer, 0, 0, 640, 360, get_colour(0, 0, 0, 255));

        //0xFF000000

        Circle.fill_color (this.renderer, x, y, 100, colour);
        renderer.present ();
    }

    public static int main (string[] args) {
        SDL.init (SDL.InitFlag.EVERYTHING);

        var game = new VGL ();
        game.run ();

        SDL.quit();

        return 0;
    }

    private uint32 get_colour (int r, int g, int b, int a) {
        uint32 colour = ((uint32)a << 24) + ((uint32)r << 16) + ((uint32)g << 8) + ((uint32)b);

        return colour;

    }
}