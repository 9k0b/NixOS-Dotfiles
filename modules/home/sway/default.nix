{
pkgs, 
lib, 
config,
... 
}:

{
  wayland.windowManager.sway = {
    enable = true;
    config.input = {
      "*" = {
        xkb_layout = "de";
      };
    };
    config.keybindings = {
      "Mod4+w" = "kill";
      "Mod4+Return" = "exec foot";
      "Mod4+D" = "exec wofi --show drun";
    };
  };
}
