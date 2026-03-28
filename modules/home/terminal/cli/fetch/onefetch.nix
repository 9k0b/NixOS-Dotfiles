{pkgs, lib, config, ... }:

{

  options = {
    onefetch.enable =
      lib.mkEnableOption "enable onefetch a neofetch like tool for git repos";
  };

  config = lib.mkIf config.onefetch.enable {
    home.packages = with pkgs; [
      onefetch
    ];
  };
}
