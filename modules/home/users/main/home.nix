{ pkgs, lib, config, inputs, ... }:

{

  imports = [
    ../../default.nix
  ];

  home = {
    username = "main";
    homeDirectory = lib.mkDefault "home/main";
    stateVersion = "25.11";
  };

  # window manager
  swaywm.enable = true;

  # media
  spotify.enable = true;

  # terminal
  foot.enable = true;

  # fetch
  onefetch.enable = true;
  fastfetch.enable = true;
  # shell
  fishShell.enable = true;

  home.packages = [
    pkgs.librewolf
    pkgs.zed-editor
    pkgs.foot
    pkgs.wofi
  ];

  programs.git.enable = true;
  programs.git.userName = "9k0b";
  programs.git.userEmail = "jakob.fuenderich@gmail.com";
  programs.neovim.enable = true;
}
