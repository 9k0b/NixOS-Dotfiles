{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    podman.enable =
      lib.mkEnableOption "enable podman for containers";
  };

  config = lib.mkIf config.podman.enable {
    virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };
  };
}
