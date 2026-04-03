{pkgs, ...}: {
  imports = [
    ./nixvim/default.nix
    ./zed/default.nix
  ];
}
