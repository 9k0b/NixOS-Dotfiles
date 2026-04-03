{ pkgs, lib, config, inputs, ... }:

{

  options = {
    wallpaper.enable =
      lib.mkEnableOption "enable swww for wallpapers";
  };

  config = lib.mkIf config.wallpaper.enable {
    services.swww = {
      enable = true;
      package = inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww;
    };
  };
}
