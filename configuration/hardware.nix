{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/44527877-0117-40d7-8eec-310a756a591c";
      fsType = "f2fs";
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/9DB4-78AE";
      fsType = "vfat";
    };
  };

  swapDevices = [
    {
      device = "/.swapfile";
    }
  ];

  hardware.opengl = {
    enable = true;
  };
}
