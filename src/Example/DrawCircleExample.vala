using Virgil;
using Virgil.Utility;
using Virgil.Graphics;

public class DrawCircleExample : Engine.Game {
    private const int REFRESH_DELAY = 1000;
    private int timer = 10;

    public override void run () {
        initialise (640, 360, "Draw Circle Example");

        while (timer > 0 && running) {
            events ();
            draw ();

            print ("Closing in " + timer.to_string () + "\n");

            SDL.Timer.delay (REFRESH_DELAY);
            timer--;
        }
    }

    public override void draw () {
        Draw.draw_rectangle (renderer, 0, 0, (int16)window_width, (int16)window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));

        int16 circle_x = (int16)(window_width / 2);
        int16 circle_y = (int16)(window_height / 2);

        Draw.draw_circle (renderer, circle_x, circle_y, 128, Colour.convert_rgb_to_uint32(255, 255, 255, 255));

        renderer.present ();
    }
}
