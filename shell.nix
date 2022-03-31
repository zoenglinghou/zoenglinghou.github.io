{ pkgs, config, hugo-theme-terminal, ... }:
pkgs.mkShell {
  buildInputs = [ pkgs.hugo pkgs.rsync hugo-theme-terminal ];
  srcs = [ config ];
  shellHook = ''
    mkdir -p themes
    ln -snf ${config.outPath} config.toml
    rsync -ahu ${hugo-theme-terminal}/* themes/terminal
  '';
  buildPhase = ''
    hugo -D
  '';
}
