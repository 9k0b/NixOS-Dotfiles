{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    forgejoContainer.enable =
      lib.mkEnableOption "enable a vaultwarden container";
  };

  config = lib.mkIf config.forgejoContainer.enable {
    services.podman = {
      images = {
        forgejo = import ./image.nix;
      };
      containers = {
        forgejo = import ./container.nix;
      };
      volumes = {
        forgejo = import ./volume.nix;
      };
    };
  };
}
