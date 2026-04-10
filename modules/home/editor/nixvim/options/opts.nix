{ pkgs, ... }:

{

  programs.nixvim = {
    opts = {
      updatetime = 100;
      relativenumber = true;
      number = true;
      hidden = true;
      mouse = "a";
      mousemodel = "extend";
      swapfile = false;
      modeline = true;
      modelines = true;
      undofile = true;
      incsearch = true;
      inccomand = "split";
      ignorecase = true;
      smartcase = true;
      cursorline = true;
      cursorcolumn = true;
      signcolumn = true;
      colorcolumn = true;
      laststatus = 3;
      fileencoding = "utf-8";
      termguicolors = true;
      spell = false;
      wrap = false;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      textwidth = true;
    };
  };
}
