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
        action = ":Ex<CR>";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = ":Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = ":Telescope live_grep<CR>";
      }
      {
        mode = "n";
        key = "<leader>w";
        action = ":w<CR>";
      }
      {
        mode = "n";
        key = "<leader>q";
        action = ":q!<CR>";
      }
      {
        mode = "n";
        key = "<leader>wq";
        action = ":wq<CR>";
      }
    ];
  };
}
