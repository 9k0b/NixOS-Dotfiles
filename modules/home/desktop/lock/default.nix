{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    lockscreen.enable =
      lib.mkEnableOption "enable hyprlock as a lockscreen";
  };

  config = lib.mkIf config.lockscreen.enable {
    programs.hyprlock = {
      enable = true;
      settings = import ./settings.nix;
    };
  };
}
