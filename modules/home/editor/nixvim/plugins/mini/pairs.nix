{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      mini-pairs = {
        enable = true;
        settings = {
          command = true;
          insert = true;
        };
      };
    };
  };
}
