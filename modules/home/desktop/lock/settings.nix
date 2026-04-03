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
        duration = 150;
        bezier = "easeOutQuint";
      };
      fade_out = {
        duration = 150;
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
    {
      monitor = "";
      text = "cmd[update:1000] date +%H:%M";
      font_family = "JetBrainsMono Nerd Font Propo";
      font_color = "rgb(122, 162, 247)";
      font_size = "200";
      position = "0, 500";
      halign = "center";
      valign = "bottom";
    }
    {
    }
  ];

  input-field = [
    {
      monitor = "";
      size = "400, 50";
      outline_thickness = 4;
      inner_color = "rgba(122, 162, 247, 0.6)";
      outer_color = "rgb(158, 206, 106)";
      font_color = "rgb(187, 154, 247)";
      fail_color = "rgb(247, 118, 142)";
      rounding = 30;
      fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
      fail_transition = 300;
      dots_size = 0.2;
      dots_spacing = 0.5;
      dots_center = true;
      position = "0, 200";
      halign = "center";
      valign = "bottom";
    }
  ];
}
