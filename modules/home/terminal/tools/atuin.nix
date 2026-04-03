{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    atuin.enable =
      lib.mkEnableOption "enable atuin";
  };

  config = lib.mkIf config.atuin.enable {
    programs.atuin = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        auto_sync = true;
        sync_frequency = "5m";
        sync_address = "https://api.atuin.sh";
        search_mode = "prefix";
      };
    };
  };
}
