{pkgs, ...}: {
  programs.git = {
    enable = true;
    lfs.enable = true;
    ignores = [
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
