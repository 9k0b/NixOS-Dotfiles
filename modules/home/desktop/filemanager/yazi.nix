{ pkgs, lib, config, ... }:

{

  options = {
    yazi.enable =
      lib.mkEnableOption "enable yazi a tui file-manager";
  };

  config = lib.mkIf config.yazi.enable {
    programs.yazi {
      enable = true;
      enableFishIntegration = true;
      plugins = {
        lazygit = pkgs.yaziPlugins.lazygit;
        full-border = pkgs.yaziPlugins.full-border;
        git = pkgs.yaziPlugins.git;
        smart-enter = pkgs.yaziPlugins.smart-enter;
      };
    };
  };
}
