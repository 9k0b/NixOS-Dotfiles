{pkgs, ...}: {
  programs.fd = {
    enable = true;
  };

  home.shellAliases = {
    "fd" = "fd --color always";
    "find" = "fd";
  };
}
