{
  description = "Flake para o frontend Portfolio";

  outputs = { self, nixpkgs, ... }:

  let
    pkgs = import nixpkgs {};

    frontend = pkgs.stdenv.mkDerivation rec {
      name = "frontend-portfolio";
      src = ./.;
      phases = ["installPhase"];
      installPhase = "cp -r $src $out";
    };
  in
  {
    defaultPackage = frontend;
  };
}
