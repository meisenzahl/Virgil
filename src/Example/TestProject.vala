using SDL.Video;

using Virgil;
using Virgil.Utility;
using Virgil.Graphics;

public class TestProject : Engine.Game {
    public Sprite test;
    public Rect des;

    public TestProject () {
        initialise (640, 360, "Test Project");

        test = new Sprite (renderer);
    }

    public override void update () { }

    public override void draw () {
        draw_rectangle (renderer, 0, 0, window_width, window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));

        des = Rect() {
            w = 32,
            h = 32
        };

        renderer.copy (test.texture, null, des);

        // int circle_x = (window_width / 2);
        // int circle_y = (window_height / 2);

        // draw_circle (renderer, circle_x, circle_y, 128, Colour.convert_rgb_to_uint32(255, 255, 255, 255));

        renderer.present ();
    }
}
