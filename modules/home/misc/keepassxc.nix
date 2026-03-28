{ pkgs, lib, config, ... }:

{

  options = {
    keepassxc.enable =
      lib.mkEnableOption "enable the keepassxc password manager";
  };

  config = lib.mkIf config.keepassxc.enable {
    programs.keepassxc = {
      enable = true;
      settings = {
        Browser.Enabled = true;
        GUI = {
          ApplicationTheme = "dark";
          HidePasswords = true;
        };
      };
    };
  };
}
