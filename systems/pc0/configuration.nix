{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ../../modules/nixos/default.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # gpu drivers
  nvidia.enable = true;

  audio.enable = true;

  # containers
  podman.enable = true;

  # tailscale
  tailscale.enable = true;

  traefik.enable = false;

  # ssh
  ssh.enable = false;

  # ai
  ollama.enable = false;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "pc0";

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Berlin";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  users.users.main = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"]; # Enable ‘sudo’ for the user.
  };

  system.stateVersion = "25.11"; # Did you read the comment?
  nixpkgs.config.allowUnfree = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd sway";
      };
    };
  };
}
