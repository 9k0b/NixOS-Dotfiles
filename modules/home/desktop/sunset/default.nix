{ pkgs, lib, config, ... }:

{

  options = {
    sunset.enable =
      lib.mkEnableOption "enable hyprsunset for screendiming and better sleep";
  };

  config = lib.mkIf config.sunset.enable {
    services.hyprsunset = {
      enable = true;
      settings = import ./settings.nix;
    };
  };
}
