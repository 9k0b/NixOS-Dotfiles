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
    path = "~/.nixos/images/wallpapers/tokyo_night_cafe.png";
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
      color = "rgb(122, 162, 247)";
      position = "0, 300";
      halign = "center";
      valign = "bottom";
    }
  ];

  input-field = [
    {
      monitor = "";
      size = "400, 50";
      outline_thickness = 3;
      inner_color = "rgb(122, 162, 247)";
      outer_color = "rgb(187, 154, 247)";
      font_color = "rgb(187, 154, 247)";
      fail_color = "rgb(247, 118, 142)";
      rounding = 15;
      fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
      fail_transition = 300;
      dots_size = 0.2;
      dots_spacing = 0.64;
      dots_center = true;
      position = "0, 200";
      halign = "center";
      valign = "bottom";
    }
  ];
}
