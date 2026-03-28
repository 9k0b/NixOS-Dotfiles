{ pkgs, lib, config, ... }:

{

  options = {
    swaywm.enable =
      lib.mkEnableOption "enable the sway wayland compositor";
  };

  config = lib.mkIf config.swaywm.enable {
    wayland.windowManager.sway = {
      enable = true;
      config = {
        modifier = "Mod4";
        input = import ./input.nix;
        keybindings = import ./keybinds.nix;
        output = import ./output.nix;
        startup = import ./auto-start.nix;
        colors = import ./colors.nix;
        window = import ./window.nix;
        gaps = import ./gaps.nix;
        fonts = import ./font.nix;
        bars = [ ];
      };
    };
  };
}
