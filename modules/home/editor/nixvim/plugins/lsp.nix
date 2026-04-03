{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          asm_lsp = {
            enable = false;
          };
          bashls = {
            enable = true;
          };
          clangd = {
            enable = false;
          };
          cssls = {
            enable = false;
          };
          docker_language_server = {
            enable = false;
          };
          gopls = {
            enable = true;
          };
          html = {
            enable = false;
          };
          jsonls = {
            enable = true;
          };
          lua_ls = {
            enable = false;
          };
          marksman = {
            enable = true;
          };
          powershell_ls = {
            enable = false;
          };
          pylsp = {
            enable = true;
          };
          sqls = {
            enable = false;
          };
          systemd_ls = {
            enable = true;
          };
          ts_ls = {
            enable = false;
          };
        };
      };
    };
  };
}
