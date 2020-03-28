using Virgil.Engine;

using SDL.Video;
using SDLImage;

namespace Virgil.Graphics {
    public class Sprite {
        public bool is_loaded;

        public int width;
        public int height;

        private PixelRAWFormat texture_format;
        private int texture_access;

        public Rect texture_rectangle;

        public Texture? texture;

        public string texture_file {
            public get;
            private set;
        }

        public Sprite (string file = "assets/default.png") {
            texture = load_texture (render, file);

            texture.query (out texture_format, out texture_access, out width, out height);

            texture_rectangle.x = 0;
            texture_rectangle.y = 0;

            texture_rectangle.w = width;
            texture_rectangle.h = height;
        }

        public void render () {
            Game.renderer.copy (texture, null, texture_rectangle);
        }
    }
}
