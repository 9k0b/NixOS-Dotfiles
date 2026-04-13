{
  description = "Forgejo Container";
  image = "forgejo";
  autoStart = true;
  autoUpdate = "local";
  ports = [
    "0.0.0.0:3000:3000"
    "127.0.0.1:222:22"
  ];
  volumes = [
    "/home/main/forgejo/data:/data"
  ];
}
