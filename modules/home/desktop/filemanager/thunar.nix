{ pkgs, lib, config, ... }:

{

  options = {
    thunar.enable =
      lib.mkEnableOption "enable thunar file-manager";
  };

  config = lib.mkIf config.thunar.enable {
    home.packages = with pkgs; [
      xfce.thunar
      xfce.thunar-volman
    ];
  };
}
