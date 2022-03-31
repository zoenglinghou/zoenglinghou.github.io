{
  description = "My Personal Website built on Hugo, managed by Nix";

  inputs = {
    wafer.url = "github:zoenglinghou/wafer?ref=main";

    flake-utils.follows = "wafer/utils";
    nixpkgs.follows = "wafer/nixpkgs";

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
          inherit hugo-theme-terminal;
        };
        defaultPackage = packages.name;
        packages.name = pkgs.stdenvNoCC.mkDerivation rec {
          inherit name;
          src = [ self config ];
          buildInputs = with pkgs; [ coreutils hugo hugo-theme-terminal ];
          phases = [ "buildPhase" "installPhase" ];
          buildPhase = ''
            export PATH="${pkgs.lib.makeBinPath buildInputs}";
            cp ${config.outPath} ./config.toml
            mkdir -p ./themes
            cp -r ${self.inputs.hugo-theme-terminal.outPath} ./themes/terminal
            hugo
          '';
          installPhase = ''
            mkdir $out
            cp -r * $out/
          '';
        };
      });
}
