{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    dockerGui.enable =
      lib.mkEnableOption "enable lazydocker";
  };

  config = lib.mkIf config.dockerGui.enable {
    home.packages = with pkgs; [
      lazydocker
    ];
  };
}
