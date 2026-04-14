{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    bootdev.enable =
      lib.mkEnableOption "enable the boot.dev cli";
  };

  config = lib.mkIf config.bootdev.enable {
    home.packages = with pkgs; [
      bootdev-cli
      go
      gcc
    ];
  };
}
