public static int main (string[] args) {
    SDL.init (SDL.InitFlag.EVERYTHING);

    var game = new TestProject ();

    while (game.running) {
        game.run ();
    }

    SDL.quit ();

    return 0;
}
