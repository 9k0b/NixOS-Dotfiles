{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    ssh.enable =
      lib.mkEnableOption "enable ssh";
  };

  config = lib.mkIf config.ssh.enable {
    services.openssh = {
      enable = true;
      startWhenNeeded = true;
      settings = {
        PrintMotd = true;
        PermitRootLogin = "no";
        PasswordAuthentication = false;
        UseDns = true;
        DenyUsers = [
          "main"
          "school"
        ];
        allowUsers = [
          "ssh-user"
        ];
      };
      ports = [
        17829
      ];
      openFirewall = true;
    };
    services.fail2ban = import ./fail2ban.nix;
  };
}
