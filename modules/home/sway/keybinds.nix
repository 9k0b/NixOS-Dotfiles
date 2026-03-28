
  let
    mod = config.wayland.windowManager.sway.config.modifier;
  in lib.mkOptionDefault
  {
    "${mod}+Return" = "exec foot";
    "${mod}+d" = "exec wofi --show drun";
    "${mod}+f" = "exec thunar";

    "${mod}+w" = "kill";

    "${mod}+v" = "fullscreen";
    "${mod}+e" = "layout toggle split";
    "${mod}+s" = "layout stacking";
    "${mod}+a" = "layout tabbed";

    "${mod}+h" = "focus left";
    "${mod}+j" = "focus down";
    "${mod}+k" = "focus up";
    "${mod}+l" = "focus right";

    "${mod}+Shift+h" = "move left";
    "${mod}+Shift+j" = "move down";
    "${mod}+Shift+k" = "move up";
    "${mod}+Shift+l" = "move right";

    "${mod}+l" = "exec hyprlock";
    "${mod}+Escape" = "exec ../../../scripts/wofi/power_menu.sh";

    "${mod}+1" = "workspace number 1";
    "${mod}+2" = "workspace number 2";
    "${mod}+3" = "workspace number 3";
    "${mod}+4" = "workspace number 4";
    "${mod}+5" = "workspace number 5";
    "${mod}+6" = "workspace number 6";
    "${mod}+7" = "workspace number 7";
    "${mod}+8" = "workspace number 8";
    "${mod}+9" = "workspace number 9";
    "${mod}+0" = "workspace number 10";

    "${mod}+Shift+1" = "move to workspace number 1";
    "${mod}+Shift+2" = "move to workspace number 2";
    "${mod}+Shift+3" = "move to workspace number 3";
    "${mod}+Shift+4" = "move to workspace number 4";
    "${mod}+Shift+5" = "move to workspace number 5";
    "${mod}+Shift+6" = "move to workspace number 6";
    "${mod}+Shift+7" = "move to workspace number 7";
    "${mod}+Shift+8" = "move to workspace number 8";
    "${mod}+Shift+9" = "move to workspace number 9";
    "${mod}+Shift+0" = "move to workspace number 10";
};
