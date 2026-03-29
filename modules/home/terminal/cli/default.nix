{ pkgs, ... }:

{

  imports = [
    ./fetch/default.nix
    ./btop.nix
    ./eza.nix
    ./fd.nix
    ./fzf.nix
    ./rg.nix
    ./zoxide.nix
    ./bat.nix
  ];
}
