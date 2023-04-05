# Author: @googleson78
{
  description = "Build dependencies for clc-stackage";
  inputs = {
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in with pkgs;
    {
      devShell.x86_64-linux = mkShell {
        buildInputs = [
          haskell.compiler.ghc94
          cabal-install
          libffi.dev
          libGL
          xorg.libX11
          zlib
          pkg-config
          xorg.libXcursor
          xorg.libXrandr
          xorg.libXxf86vm
          xorg.libXi
          bzip2
          curl
          libGLU
          xorg.libXau
          xorg.libXinerama
          blas
          pcre
          icu
          lzlib
          xz
          lapack
          expat
          file
          systemdMinimal
          elfutils
          xorg.libXext.dev
          pango
          glib
          libxml2
          numactl
          protobuf
          openal
          gmp
        ];
      };
    };
}
