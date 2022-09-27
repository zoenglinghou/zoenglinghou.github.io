{ pkgs, config, hugo-theme-coder, ... }:
pkgs.mkShell {
  buildInputs = [ pkgs.hugo pkgs.rsync ];
  srcs = [ config hugo-theme-coder ];
  shellHook = ''
    mkdir -p themes
    ln -snf ${config.outPath} config.toml
    rsync -ahu ${hugo-theme-coder}/* themes/hugo-coder
  '';
  buildPhase = ''
    hugo -D
  '';
}
