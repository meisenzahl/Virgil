public static int main (string[] args) {
    SDL.init (SDL.InitFlag.EVERYTHING);

    var game = new DrawCircleExample ();
    game.run ();

    SDL.quit ();

    return 0;
}
