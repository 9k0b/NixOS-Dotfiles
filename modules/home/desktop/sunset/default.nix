{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    sunset.enable =
      lib.mkEnableOption "enable hyprsunset for screendiming and better sleep";
  };

  config = lib.mkIf config.sunset.enable {
    services.gammastep = {
      enable = true;
      longitude = 10.0;
      latitude = 51.0;
      temperature = {
        night = 2500;
        day = 10000;
      };
      tray = true;
    };
  };
}
