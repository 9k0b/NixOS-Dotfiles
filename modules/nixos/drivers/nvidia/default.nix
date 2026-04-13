{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    nvidia.enable =
      lib.mkEnableOption "enable the nvidia drivers (with open kernel module)";
  };

  config = lib.mkIf config.nvidia.enable {
    programs.sway.package = pkgs.sway.override {extraOptions = ["--unsupported-gpu"];};
    hardware.nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.latest;
      open = true;
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      nvidiaSettings = true;
    };
    services.xserver.videoDrivers = [
      "nvidia"
    ];
  };
}
