{pkgs, ...}: {
  imports = [
    ./jellyfin/default.nix
    ./vaultwarden/default.nix
    ./forgejo/default.nix
  ];
}
