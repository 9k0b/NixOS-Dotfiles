{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
          formatters_by_ft = {
            nix = ["alejandra"];
            lua = ["stylua"];
            javascript = ["prettierd"];
            typescript = ["prettierd"];
            javascriptreact = ["prettierd"];
            typescriptreact = ["prettierd"];
            css = ["prettierd"];
            html = ["prettierd"];
            markdown = ["prettierd"];
            sh = ["shfmt"];
          };
          format_on_save = {
            lsp_fallback = true;
          };
        };
      };
    };
  };
}
