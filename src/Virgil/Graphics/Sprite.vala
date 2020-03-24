using SDL.Video;
using SDLImage;

namespace Virgil.Graphics {
    public class Sprite {
        public bool is_loaded;

        public int width;
        public int height;

        private PixelRAWFormat texture_format;
        private int texture_access;

        public Texture? texture;
        unowned Renderer renderer;

        public string texture_file {
            public get;
            private set;
        }

        public Sprite (Renderer render, string file = "assets/default.png") {
            renderer = render;

            texture = load_texture (render, file);

            texture.query (out texture_format, out texture_access, out width, out height);
        }
    }
}
