{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    zed-editor.enable =
      lib.mkEnableOption "enable the zed-editor";
  };

  config = lib.mkIf config.zed-editor.enable {
    programs.zed-editor = {
      enable = true;
    };
  };
}
