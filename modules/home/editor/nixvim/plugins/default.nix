{ pkgs, ... }:

{

  imports = [
    ./lsp.nix
    ./conform-nvim.nix
    ./mini/default.nix
    ./tokyo-night.nix
  ];
}
