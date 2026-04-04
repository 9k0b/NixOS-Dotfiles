{pkgs, ...}: {
  imports = [
    ./bat/default.nix
    ./btop/default.nix
    ./eza/default.nix
    ./fd/default.nix
    ./fzf/default.nix
    ./fetch/default.nix
    ./ripgrep/default.nix
    ./zoxide/default.nix
  ];
}
