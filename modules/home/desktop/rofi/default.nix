{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    rofi.enable =
      lib.mkEnableOption "enable rofi as a launcher";
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi = {
      enable = true;
      theme = ./tokyo-night.rasi;
      location = "top-right";
    };
  };
}
