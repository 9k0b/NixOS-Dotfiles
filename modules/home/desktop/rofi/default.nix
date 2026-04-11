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
      pass = {
        enable = true;
        package = pkgs.rofi-pass-wayland;
      };
      plugins = with pkgs; [
        rofi-emoji
      ];
    };
  };
}
