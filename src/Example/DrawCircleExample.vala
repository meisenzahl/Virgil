using Virgil;
using Virgil.Utility;
using Virgil.Graphics;

public class DrawCircleExample : Engine.Game {
    public DrawCircleExample () {
        initialise (640, 360, "Draw Circle Example");
    }

    public override void update () { }
    
    public override void draw () {
        draw_rectangle (renderer, 0, 0, window_width, window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));

        int circle_x = (window_width / 2);
        int circle_y = (window_height / 2);

        draw_circle (renderer, circle_x, circle_y, 128, Colour.convert_rgb_to_uint32(255, 255, 255, 255));

        renderer.present ();
    }
}