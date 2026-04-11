{
  description = "Jellyfin Container";
  image = "jellyfin";
  autoStart = true;
  autoUpdate = "registry";
  ports = [
    "7359:7359/udp"
    "8096:8096/tcp"
  ];
  volumes = [
    "/home/main/jellyfin/config:/config"
    "/home/main/jellyfin/cache:/cache"
    "/home/main/media:/media"
  ];
}
