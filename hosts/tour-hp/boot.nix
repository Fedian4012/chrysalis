{config, pkgs, ...}:

{
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 10;

  boot.loader.grub = {
    enable = true;
    memtest86.enable = true;

    efiSupport = true;
    efiInstallAsRemovable = false;
    device = "nodev";
  };
}
