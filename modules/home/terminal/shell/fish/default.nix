{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    fishShell.enable =
      lib.mkEnableOption "enable the fish shell";
  };

  config = lib.mkIf config.fishShell.enable {
    programs.fish = {
      enable = true;
      binds = {
      };
      generateCompletions = true;
      shellAliases = {
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";
        "......" = "cd ../../../../../";
        "mkdir" = "mkdir -p";
        "gcm" = "../../../../../scripts/git/add_commit.sh";
        "rebuild" = "../../../../../scripts/nixos/rebuild.sh";
        "gcr" = "../../../../../scripts/git/add_commit_push.sh";
      };
      shellInit = "tmux";
    };
  };
}
