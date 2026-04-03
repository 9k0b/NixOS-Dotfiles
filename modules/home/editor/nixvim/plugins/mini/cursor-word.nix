{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      mini-cursorword = {
        enable = true;
        settings = {
          delay = 25;
        };
      };
    };
  };
}
