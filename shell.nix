{ pkgs, config, hugo-theme-terminal, ... }:
pkgs.mkShell {
  buildInputs = [ pkgs.hugo hugo-theme-terminal ];
  srcs = [ config ];
  shellHook = ''
    ln -snf ${config.outPath} config.toml
    ln -snf "${hugo-theme-terminal}" themes/terminal
  '';
  buildPhase = ''
    hugo -D
  '';
}
