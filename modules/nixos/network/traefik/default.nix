{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    traefik.enable =
      lib.mkEnableOption "enable traefik as a reverse proxy";
  };

  config = lib.mkIf config.traefik.enable {
    services.traefik = {
      enable = true;
    };
  };
}
