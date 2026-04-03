{ pkgs, lib, config, ... }:

{

  options = {
    wallpaper.enable =
      lib.mkEnableOption "enable swww for wallpapers";
  };

  config = lib.mkIf config.wallpaper.enable {
    services.swww = {
      enable = true;
    };
  };
}
