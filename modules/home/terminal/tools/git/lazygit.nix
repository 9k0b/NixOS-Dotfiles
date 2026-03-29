{ pkgs, lib, config, ... }:

{

  options = {
    lazygit.enable =
      lib.mkEnableOption "enable lazygit a tui for git";
  };

  config = lib.mkIf config.lazygit.enable {
    programs.lazygit = {
      enable = true;
      enableFishIntegration = true;
      enableBashIntegration = true;
    };
  };
}
