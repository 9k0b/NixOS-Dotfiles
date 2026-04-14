{pkgs, ...}: {
  imports = [
    ./gui.nix
    ./cli.nix
  ];
}
