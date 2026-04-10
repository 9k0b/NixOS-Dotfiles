{ pkgs, lib, config, ... }:

{

  options = {
    virtual-machines.enable =
      lib.mkEnableOption "enable qemu and kvm for virtual-machines";
  };

  config = lib.mkIf config.virtual-machines.enable {
    virtualisation = {
      libvirtd = {
        enable = true;
        qemu = {
          runAsRoot = false;
          swtpm.enable = false;
        };
      };
      allowedBridges = [
        "virbr0"
      ];
    };
    spiceUSBRedirection.enable = true;
  };
  users.users.main = {
    extraGroups = [ "libvirtd" ];
  };
}
