{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    password-store.enable =
      lib.mkEnableOption "enable the keepassxc password manager";
  };

  config = lib.mkIf config.password-store.enable {
    programs = {
      password-store = {
        enable = true;
        package = pkgs.pass-wayland;
      };
      gpg = {
        enable = true;
      };
    };
    services.gpg-agent = {
      enable = true;
      enableFishIntegration = true;
      enableSshSupport = true;
      pinentry = {
        package = [
          pkgs.pinentry-tty
        ];
      };
    };
  };
}
