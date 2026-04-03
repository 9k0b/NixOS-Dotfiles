{pkgs, ...}: {
  imports = [
    ./mini/default.nix
    ./tokyonight/default.nix
    ./lualine/default.nix
    ./lsp/default.nix
    ./conform/default.nix
    ./treesitter/default.nix
    ./blink/default.nix
    ./snippets/default.nix
  ];
}
