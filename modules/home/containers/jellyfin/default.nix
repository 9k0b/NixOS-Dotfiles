{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    jellyfinContainer.enable =
      lib.mkEnableOption "enable a jellyfin container";
  };

  config = lib.mkIf config.jellyfinContainer.enable {
    services.podman = {
      images = {
        jellyfin = import ./image.nix;
      };
      containers = {
        jellyfin = import ./container.nix;
      };
      volumes = {
        jellyfin = import ./volume.nix;
      };
    };
  };
}
