{pkgs, ...}: {
  imports = [
    ./ssh/default.nix
    ./tailscale/default.nix
    ./traefik/default.nix
  ];
}
