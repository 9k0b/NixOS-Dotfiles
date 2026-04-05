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
      format = "{:%H\n:%M}";
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
  };
}
