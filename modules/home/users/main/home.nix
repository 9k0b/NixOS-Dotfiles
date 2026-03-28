{
pkgs,
lib,
config,
inputs,
...
}:

{

  imports = [
    ../../sway/default.nix
  ];

  home = {
    username = "main";
    homeDirectory = lib.mkDefault "home/main";
    stateVersion = "25.11";
  };

  home.packages = [
    pkgs.librewolf
    pkgs.zed-editor
    pkgs.foot
    pkgs.wofi
  ];

  programs.git.enable = true;
  programs.neovim.enable = true;


}
