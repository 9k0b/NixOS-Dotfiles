{
  description = "Jellyfin Container";
  image = "jellyfin";
  autoStart = true;
  autoUpdate = "local";
  ports = [
    "0.0.0.0:7359:7359/udp"
    "0.0.0.0:8096:8096/tcp"
  ];
  volumes = [
    "/home/main/jellyfin/config:/config"
    "/home/main/jellyfin/cache:/cache"
    "/home/main/media:/media"
  ];
}
