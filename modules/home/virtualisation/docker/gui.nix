{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    dockerGui.enable =
      lib.mkEnableOption "enable docker-desktop";
  };

  config = lib.mkIf config.dockerGui.enable {
    home.packages = [
      lazydocker
    ];
  };
}
