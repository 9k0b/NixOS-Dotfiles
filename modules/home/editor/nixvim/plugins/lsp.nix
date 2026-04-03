{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          asm_lsp = {
            enable = true;
          };
          bashls = {
            enable = true;
          };
          clangd = {
            enable = true;
          };
          cssls = {
            enable = true;
          };
          docker_language_server = {
            enable = true;
          };
          gopls = {
            enable = true;
          };
          html = {
            enable = true;
          };
          jsonls = {
            enable = true;
          };
          lua_ls = {
            enable = true;
          };
          marksman = {
            enable = true;
          };
          powershell_ls = {
            enable = true;
          };
          pylsp = {
            enable = true;
          };
          sqls = {
            enable = true;
          };
          systemd_ls = {
            enable = true;
          };
          ts_ls = {
            enable = true;
          };
        };
      };
    };
  };
}
