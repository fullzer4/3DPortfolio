{
  description = "Flake para o backend Portfolio";

  outputs = { self, nixpkgs, ... }:

  let
    pkgs = import nixpkgs {};

    backend = pkgs.stdenv.mkDerivation rec {
      name = "backend-portfolio";
      src = ./.;
      phases = ["installPhase"];
      installPhase = "cp -r $src $out";
    };
  in
  {
    defaultPackage = backend;
  };
}