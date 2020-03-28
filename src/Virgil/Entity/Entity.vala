namespace Virgil.Entity {
    public class Entity {
        public bool is_active;

        public int id;

        private List<EntityComponent> components;

        public Entity () {
            is_active = true;
        }

        public void update () {
            if (is_active) {
                components.foreach((component) => {
                    component.Update ();
                });
            }
        }

        public void add_component (EntityComponent component) {
            components.append (component);
        }

        public int get_component_count () {
            return (int)components.length ();
        }
    }
}
