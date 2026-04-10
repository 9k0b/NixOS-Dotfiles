{pkgs, ...}: {
  imports = [
    ./clipboard.nix
    ./performance.nix
    ./keymappings.nix
    ./opts.nix
  ];
}
