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
  password-store.enable = true;
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

  # bar
  waybar.enable = true;

  # wallpaper
  wallpaper.enable = true;

  # redlight
  sunset.enable = true;

  # zed editor
  zed-editor.enable = false;

  home.packages = [
    pkgs.librewolf
  ];
}
