{pkgs, ...}: {
  programs.ripgrep-all = {
    enable = true;
    package = pkgs.ripgrep;
  };

  home.shellAliases = {
    "grep" = "rg";
  };
}
