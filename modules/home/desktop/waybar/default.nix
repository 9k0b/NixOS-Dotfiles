{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    waybar.enable =
      lib.mkEnableOption "enable waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar = {
      enable = true;
      enableDebug = true;
      enableInspect = true;
      settings = import ./settings.nix;
      style = builtins.readFile ./style.css;
    };
  };
}
