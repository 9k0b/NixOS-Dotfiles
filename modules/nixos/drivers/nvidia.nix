{ pkgs, lib, config, ... }:

{

  options = {
    nvidia.enable =
      lib.mkEnableOption "enable the nvidia drivers (with open kernel module)";
  };

  config = lib.mkIf config.nvidia.enable {
    hardware.nvidia = {
      programs.sway.package = pkgs.sway.override { extraOptions = [ "--unsupported-gpu" ]; };
      package = config.boot.kernelPackages.nvidiaPackages.latest;
      open = true;
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      nvidia.settings = true;
    };
  };
}
