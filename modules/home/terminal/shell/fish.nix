{ pkgs, lib, config, ... }:

{

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
        "rebuild-pc0" = "sudo nixos-rebuild switch --flake ~/.nixos#pc0";
        "mkdir" = "mkdir -p";
      };
      shellInit = "tmux";
    };
  };
}
