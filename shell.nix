{ pkgs, hugo-theme-terminal, ... }:
let
  toml = pkgs.formats.toml { };
  config = toml.generate "config.toml" (import ./config.nix);
in pkgs.mkShell {
  buildInputs = [ pkgs.hugo hugo-theme-terminal ];
  srcs = [
    config
  ];
  shellHook = ''
    cp ${config.outPath} config.toml
    ln -snf "${hugo-theme-terminal}" themes/terminal
  '';
}
