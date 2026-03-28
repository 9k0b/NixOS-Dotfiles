{ pkgs, lib, config, ...}:

{

  options = {
    tmux.enable =
      lib.mkEnableOption "enable tmux";
  };

  config = lib.mkIf config.tmux.enable {
    programs.tmux = {
      enable = true;
      baseIndex = 1;
      disableConfirmationPrompt = true;
      keyMode = "vi";
      mouse = true;
      historyLimit = 10000;
      newSession = true;
      shell = "/etc/profiles/per-user/main/bin/fish";
      terminal = "screem-256color";
    };
  };
}
