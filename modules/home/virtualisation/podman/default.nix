{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    podman.enable =
      lib.mkEnableOption "enable podman";
  };

  config = lib.mkIf config.podman.enable {
    services.podman = {
      enable = true;
    };
  };
}
