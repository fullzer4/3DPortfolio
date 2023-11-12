{ nixpkgs ? import <nixpkgs> {} }:

let
  backend = import ./backend { inherit nixpkgs; };
  frontend = import ./frontend { inherit nixpkgs; };

  combinedEnv = nixpkgs.mkShell {
    buildInputs = [ backend defaultPackage frontend defaultPackage ];
  };
in
combinedEnv