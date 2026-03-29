{ pkgs, lib, config, ... }:

{

  options = {
    terminalUtils.enable =
      lib.mkEnableOption "enable some small terminal utils";
  };

  config = lib.mkIf config.terminalUtils.enable {
    home.packages = with pkgs; [
      coreutils
      playerctl
      killall
      tldr
    ];
  };
}
