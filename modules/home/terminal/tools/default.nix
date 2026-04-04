{pkgs, ...}: {
  imports = [
    ./git/default.nix
    ./atuin/default.nix
    ./utils/default.nix
  ];
}
