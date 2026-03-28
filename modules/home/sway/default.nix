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
      modifier = "Mod4"
      input = {
        "*" = {
          xkb_layout = "de";
        };
      };
      keybindings = import ./keybinds.nix { inherit lib config;};
    };
  };
}
