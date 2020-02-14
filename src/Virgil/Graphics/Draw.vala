using SDL;
using SDLGraphics;

namespace Virgil.Graphics {
    public class Draw {
        public static void rectangle (Video.Renderer renderer, int16 x, int16 y, int16 width, int16 height, uint32 colour) {
            Rectangle.fill_color (renderer, x, y, width, height, colour);
        }

        public static void circle (Video.Renderer renderer, int16 x, int16 y, int16 radius, uint32 colour) {
            Circle.fill_color (renderer, x, y, radius, colour);
        }
    }
}
