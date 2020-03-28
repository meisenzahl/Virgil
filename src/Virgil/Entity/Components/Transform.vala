using Virgil.Entity;
using Virgil.Math;

namespace Virgil.Entity.Components {
    public class Transform : EntityComponent {
        Vector2D position = new Vector2D (0.0f, 0.0f);

        public Transform (float position_x = 0.0f, float position_y = 0.0f) {
            position.x = position_x;
            position.y = position_y;
        }
    }
}
