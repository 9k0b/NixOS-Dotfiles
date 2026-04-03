{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    spotify.enable =
      lib.mkEnableOption "enable spotify_player for spotify";
  };

  config = lib.mkIf config.spotify.enable {
    programs.spotify-player = {
      enable = true;
      settings = {
        theme = "tokyonight";
        device = {
          name = "spotify_player";
          device_type = "computer";
          login_redirect_uri = "http://127.0.0.1:8989/login";
        };
      };
      themes = [
        {
          name = "tokyonight";
          palette = {
            black = "black";
            red = "red";
            green = "green";
            yellow = "yellow";
            blue = "blue";
            magenta = "magenta";
            cyan = "cyan";
            white = "white";
            bright_black = "bright_black";
            bright_red = "bright_red";
            bright_green = "bright_green";
            bright_yellow = "bright_yellow";
            bright_blue = "bright_blue";
            bright_magenta = "bright_magenta";
            bright_cyan = "bright_cyan";
            bright_white = "bright_white";
          };
        }
      ];
    };
  };
}
