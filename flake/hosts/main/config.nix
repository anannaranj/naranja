{ config, inputs, pkgs, ... }: {
  users.users = {
    naranj = {
      isNormalUser = true;
      description = "Naranj";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
  imports = [
    ../../modules/hardware-configuration.nix
    ../../modules/boot.nix
    ../../modules/packages.nix
    ../../modules/locales.nix
    ../../modules/networking.nix
    ../../modules/environments.nix
    ../../modules/audio.nix
    ../../modules/virtualization.nix
  ];
}
