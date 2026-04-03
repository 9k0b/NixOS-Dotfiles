{ pkgs, lib, config, ... }:

{

  options = {
    wofi.enable =
      lib.mkEnableOption "enable wofi as a launcher";
  };

  config = lib.mkIf config.wofi.enable {
    programs.wofi = {
      enable = true;
      settings = import ./settings.nix;
      style = builtins.readFile ./style.css;
    };
  };
}
