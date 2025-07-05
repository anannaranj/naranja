{
  boot.loader = {
    timeout = 3;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
    grub = {
      enable = true;
      default = 2;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
    };
  };
}
