{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    vaultwardenContainer.enable =
      lib.mkEnableOption "enable a vaultwarden container";
  };

  config = lib.mkIf config.jellyfinContainer.enable {
    services.podman = {
      images = {
        vaultwarden = import ./image.nix;
      };
      containers = {
        vaultwarden = import ./container.nix;
      };
      volumes = {
        vaultwarden = import ./volume.nix;
      };
    };
  };
}
