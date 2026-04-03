{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      enable = true;
      settings = {
        backend = "kitty";
      };
    };
  };
}
