{pkgs, ...}: {
  imports = [
    ./passwords/default.nix
    ./spotify/default.nix
    ./ssh/default.nix
  ];
}
