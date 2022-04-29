# About
This personal website is built with `hugo` and `nix`.

## Development

1. Install [`nix`](https://nixos.org)
2. Install [`direnv` with `nix`](https://github.com/direnv/direnv)
3. Run `direnv allow` to allow loading `.envrc`
4. Run `hugo server` to start live server

## Build

1. Run `nix develop`
2. Run `genericBuild` to generate pages in `docs/`
