{ pkgs, ... }:

{

  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>cd";
        action = ":Ex";
      }
    ];
  };
}
