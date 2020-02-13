public static int main (string[] args) {
    SDL.init (SDL.InitFlag.EVERYTHING);

    var game = new DrawCircleExample ();
    game.run ();

    return 0;
}
