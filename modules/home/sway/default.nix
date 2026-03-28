{
pkgs,
lib,
config,
...
}:

{
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
      fonts = import ./font.nix;
      bars = [ ];
    };
  };
}
