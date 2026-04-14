{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    docker.enable =
      lib.mkEnableOption "enable the docker service";
  };

  config = lib.mkIf config.docker.enable {
    programs.docker-cli = {
      enable = true;
    };
    home.packages = with pkgs; [
      docker-compose
      compose2nix
    ];
  };
}
