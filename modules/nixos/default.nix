{pkgs, ...}: {
  imports = [
    ./drivers/default.nix
    ./misc/default.nix
    ./virtualisation/default.nix
  ];
}
