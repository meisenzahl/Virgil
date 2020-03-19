using SDL;
using SDLGraphics;

namespace Virgil.Graphics {
    public static void draw_rectangle (Video.Renderer renderer, int x, int y, int width, int height, uint32 colour) {
        Rectangle.fill_color (renderer, (int16)x, (int16)y, (int16)width, (int16)height, colour);
    }

    public static void draw_circle (Video.Renderer renderer, int x, int y, int radius, uint32 colour) {
        Circle.fill_color (renderer, (int16)x, (int16)y, (int16)radius, colour);
    }
}
