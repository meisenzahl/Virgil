using Virgil;
using Virgil.Utility;
using Virgil.Graphics;

public class DrawCircleExample : Engine.Game {
    public override void run () {
        initialise (640, 360, "Draw Circle Example");

<<<<<<< HEAD
        while (trunning) {
=======
    public override void run () {
        initialise (640, 360, "Draw Circle Example");

        while (timer > 0 && running) {
>>>>>>> 9d2669a48bf18f8627aa538a411e3f9546728ca9
            events ();
            draw ();
        }
    }

    public override void draw () {
<<<<<<< HEAD
        Draw.rectangle (renderer, 0, 0, (int16)window_width, (int16)window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));
=======
        Draw.draw_rectangle (renderer, 0, 0, (int16)window_width, (int16)window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));
>>>>>>> 9d2669a48bf18f8627aa538a411e3f9546728ca9

        int16 circle_x = (int16)(window_width / 2);
        int16 circle_y = (int16)(window_height / 2);

        Draw.circle (renderer, circle_x, circle_y, 128, Colour.convert_rgb_to_uint32(255, 255, 255, 255));

        renderer.present ();
    }
}
