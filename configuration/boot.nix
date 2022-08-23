{ pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ "quiet" ];
    kernelModules = [ "kvm-amd" ];
    kernel.sysctl."kernel.yama.ptrace_scope" = 1;
    loader = {
      systemd-boot = {
        enable = true;
	editor = false;
      };
      efi.canTouchEfiVariables = true;
    };
    initrd = {
      availableKernelModules = [ "nvme" "ehci_pci" "xhci_pci" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
       luks.devices."root" = {
         device = "/dev/disk/by-uuid/01913347-f8fa-4f51-93a5-f646c76c3ebd";
         allowDiscards = true;
       };
    };
  };
}
