{pkgs, ...}:

{
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    git = true;
    icons = "always";
  };

  home.shellAliases = {
    "l" = "eza -l";
    "ls -l" = "eza";
    "la" = "eza -la";
    "tree" = "eza --tree --level=3";
    "treef" = "eza --tree";
    "ls" = "eza | fzf";
  };
}
