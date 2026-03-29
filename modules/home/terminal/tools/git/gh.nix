{ pkgs, lib, config, ... }:

{

  options = {
    gh.enable =
      lib.mkEnableOption "enable the github cli";
  };

  config = lib.mkIf config.gh.enable {
    programs.gh = {
      enable = true;
      settings = {
        git_protocol = "ssh";
      };
    };
  };
}
