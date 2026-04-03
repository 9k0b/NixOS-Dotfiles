{pkgs, ...}: {
  programs.nixvim = {
    performance = {
      combinePlugins = {
        enable = false;
      };
      byteCompileLua = {
        enable = true;
      };
    };
  };
}
