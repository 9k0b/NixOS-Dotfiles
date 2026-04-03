{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
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

  # filemanagers
  yazi.enable = true;
  thunar.enable = true;

  # media
  spotify.enable = true;

  # terminal
  foot.enable = true;

  # fetch
  onefetch.enable = true;
  fastfetch.enable = true;
  # shell
  fishShell.enable = true;
  # tmux
  tmux.enable = true;

  # password manager
  keepassxc.enable = true;
  sshAgent.enable = true;

  # git
  gh.enable = true;
  lazygit.enable = true;
  # atuin
  atuin.enable = true;
  terminalUtils.enable = true;

  # lockscreen
  lockscreen.enable = true;

  # launcher
  wofi.enable = true;

  # wallpaper
  wallpaper.enable = true;

  # redlight
  sunset.enable = true;

  home.packages = [
    pkgs.librewolf
    pkgs.zed-editor
  ];
}
