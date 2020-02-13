namespace Virgil.Utility {
    public class Colour {
        public static uint32 convert_rgb_to_uint32 (int r, int g, int b, int a) {
            uint32 colour = ((uint32)a << 24) + ((uint32)b << 16) + ((uint32)g << 8) + ((uint32)r);

            return colour;
        }
    }
}
