{pkgs, ...}: {
  imports = [
    ./ssh/default.nix
    ./tailscale/default.nix
  ];
}
