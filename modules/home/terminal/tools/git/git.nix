{ pkgs, ... }:

{

  programs.git = {
    enable = true;
    lfs = enabled;
    ignore = [
      "*.iso"
      "*.swap"
    ];
    settings = {
      core = {
        editor = "nvim";
      };
      init.defaultBranch = "main";
      user = {
        name = "9k0b";
        email = "jakob.fuenderich@gmail.com";
      };
    };
  };
}
