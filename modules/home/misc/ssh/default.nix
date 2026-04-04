{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    sshAgent.enable =
      lib.mkEnableOption "enable ssh-agent";
  };

  config = lib.mkIf config.sshAgent.enable {
    services.ssh-agent = {
      enable = true;
    };
  };
}
