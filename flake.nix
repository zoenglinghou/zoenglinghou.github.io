{
  description = "My Personal Website built on Hugo, managed by Nix";

  inputs = {
    wafer.url = "github:zoenglinghou/wafer?ref=main";

    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";

    hugo-theme-terminal = {
      url = "github:panr/hugo-theme-terminal";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, hugo-theme-terminal, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        name = "zoenglinghou-website";
        toml = pkgs.formats.toml { };
        config = toml.generate "config.toml" (import ./config.nix);
      in rec {
        devShell = import ./shell.nix {
          inherit pkgs;
          inherit config;
          inherit hugo-theme-terminal;
        };
      });
}
