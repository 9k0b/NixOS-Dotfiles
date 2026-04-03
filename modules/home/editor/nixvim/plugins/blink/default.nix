{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      blink-cmp = {
        enable = true;
        settings = {
          keymap = {
            preset = "default";
            "<CR>" = ["accept" "fallback"];
            "<Tab>" = ["select_next" "fallback"];
            "<S-Tab>" = ["select_prev" "fallback"];
          };
          appearance = {
            nerd_font_variant = "mono";
          };
          completion = {
            documentation = {
              auto_show = true;
              auto_show_delay_ms = 500;
            };
          };
          sources = {
            default = ["lsp" "path" "snippets" "buffer"];
          };
          snippets = {
            preset = "luasnip";
          };
          fuzzy = {
            implementation = "prefer_rust_with_warning";
          };
          signature = {
            enabled = true;
          };
        };
      };
    };
  };
}
