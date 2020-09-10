with import <nixpkgs> {}; {
    rackasmEnv = stdenv.mkDerivation {
        name = "rackasmEnv";
        buildInputs = [ racket wabt ];
    };
}
