{pkgs, ...}: {
  imports = [
    ./pairs.nix
    ./ai.nix
    ./comment.nix
    ./cursor-word.nix
  ];
}
