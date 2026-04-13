{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    ollama.enable =
      lib.mkEnableOption "enable ollama for local ai";
  };

  config = lib.mkIf config.ollama.enable {
    services.ollama = {
      enable = true;
      package = pkgs.ollama-cuda;
      acceleration = "cuda";
      port = 11111;
      openFirewall = true;
      host = "0.0.0.0";
      loadModels = import ./models.nix;
    };
  };
}
