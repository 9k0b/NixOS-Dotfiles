{
  description = "Vaultwarden Container";
  image = "vaultwarden";
  autoStart = true;
  autoUpdate = "local";
  ports = [
    "0.0.0.0:8000:80"
    "127.0.0.1:3012:3012"
  ];
  volumes = [
    "/home/main/vaultwarden/data:/data";
}
