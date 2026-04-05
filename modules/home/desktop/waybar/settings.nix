{
  mainBar = {
    layer = "top";
    position = "right";
    height = 1080;
    width = 0;

    modules-left = [
      "custom/nixos"
      "custom/weather"
      "battery"
      "clock"
      "network"
    ];
    modules-center = [
      "sway/workspaces"
    ];
    modules-right = [
      "image#cover"
      "custom/media"
      "custom/pipewire"
      "cpu"
      "memory"
      "disk"
    ];

    "custom/nixos" = {
      format = "";
      on-click = "~/.nixos/scripts/waybar/weather.sh";
      tooltip = false;
    };
    "custom/weather" = {
      exec = "../../../../scripts/waybar/weather.sh";
      return-type = "json";
      format = "{}";
      tooltip = true;
      interval = 60;
    };
    "battery" = {
      interval = 30;
      format = "{icon}";
      format-icons = {
        default = [
          "󰂎"
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
        charging = [
          "󰢟"
          "󰢜"
          "󰂆"
          "󰂇"
          "󰂈"
          "󰢝"
          "󰂉"
          "󰢞"
          "󰂊"
          "󰂋"
          "󰂅"
        ];
      };
    };
    "clock" = {
      interval = 1;
      format = "{:%H\n%M}";
    };
    "network" = {
      interval = 1;
      format-wifi = "{icon}";
      format-disconnected = "󰤮";
      format-ethernet = "󰈀";
      on-click = "swaymsg exec foot nmtui";
      format-icons = [
        "󰤯"
        "󰤟"
        "󰤢"
        "󰤥"
        "󰤨"
      ];
      tooltip = true;
      tooltip-format = "{signalStrength} 󰢾\n{bandwidthDownBytes} \n{bandwidthUpBytes}";
    };

    "sway/workspaces" = {
      format = "";
      disable-scroll = true;
      persistent-workspaces = {
        "*" = 8;
      };
    };

    "image#cover" = {
      exec = "~/.nixos/scripts/waybar/cover_image.sh";
      size = 15;
      interval = 1;
    };
    "custom/media" = {
      format = "{text}";
      escape = true;
      return-type = "json";
      max-length = 25;
      rotate = 180;
      on-click = "playerctl pause";
      on-click-right = "playerctl stop";
      on-scroll-up = "playerctl next";
      on-scroll-down = "playerctl previous";
      exec = "~/.nixos/scripts/waybar/media_player.py 2> /dev/null";
      tooltip = false;
    };
  };
}
