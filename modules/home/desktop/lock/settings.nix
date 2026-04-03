{
  general = [
    {
    hide_cursor = true;
    ignore_empty_input = true;
    immediate_render = true;
    screencopy_mode = true;
    fail_timeout = 5000;
    }
  ];

  animations = [
    {
    enabled = true;
    fade_in = {
      duration = 300;
      bezier = "easeOutQuint";
    };
    fade_out = {
      duration = 300;
      bezier = "easeOutQuint";
    };
    }
  ];

  background = [
    {
    path = "../../../../images/wallpapers/tokyo_night_cafe.png";
    monitor = "";
    blur_passes = 3;
    blur_size = 5;
    }
  ];

  label = [
    {
      # username
      monitor = "";
      text = "cmd[update:1000] whoami";
      font_family = "JetBrainsMono Nerd Font Propo";
      color = "#7aa2f7";
      position = "0, 160";
      halign = "center";
      valign = "bottom";
    }
  ];





}
