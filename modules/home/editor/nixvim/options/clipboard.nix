{ pkgs, ... }:

{

  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
      providers = "wl-copy";
    };
  };
}
