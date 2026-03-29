{pkgs, ...}:

{
  programs.ripgrep-all = {
    enable = true;
  };

  home.shellAliases = {
    "grep" = "rg";
  };
}
