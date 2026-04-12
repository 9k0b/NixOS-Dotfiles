{pkgs, ...}: {
  imports = [
    ./jellyfin/default.nix
    ./vaultwarden/default.nix
  ];
}
