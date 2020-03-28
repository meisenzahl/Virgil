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

    // Temporary method
    //
    // This is just here so I can test a static renderer
    public override void draw () {
        draw_rectangle (renderer, 0, 0, window_width, window_height, Colour.convert_rgb_to_uint32 (88, 151, 233, 255));

        test.render ();

        renderer.present ();
    }
}
