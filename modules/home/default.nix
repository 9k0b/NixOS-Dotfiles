{pkgs, ...}: {
  imports = [
    ./misc/default.nix
    ./desktop/default.nix
    ./sway/default.nix
    ./terminal/default.nix
    ./editor/default.nix
    ./containers/default.nix
    ./virtualisation/dedefault.nix
  ];
}
