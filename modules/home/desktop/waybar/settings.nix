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
      on-click = "../../../../scripts/menus/power_menu.sh";
      tooltip = false;
    };
    "custom/weather" = {
      exec = "../../../../scripts/waybar/weather.sh"
    }
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
      format = "{:%H:%M}";
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
      persistent-workspaces = {
        "*" = 8;
      };
    };


  }
}
