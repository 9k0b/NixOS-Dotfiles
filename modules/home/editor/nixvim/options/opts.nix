{pkgs, ...}: {
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
      modelines = 100;
      undofile = true;
      incsearch = true;
      inccommand = "split";
      ignorecase = true;
      smartcase = true;
      cursorline = true;
      cursorcolumn = false;
      signcolumn = "yes";
      colorcolumn = "100";
      laststatus = 3;
      fileencoding = "utf-8";
      termguicolors = true;
      spell = false;
      wrap = false;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      textwidth = 0;
    };
  };
}
