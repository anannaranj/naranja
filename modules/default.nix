{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./locales.nix
    ./networking.nix
    ./audio.nix
    ./environments.nix
    ./virtualization.nix

    ./users.nix
    ./packages.nix
    # comment which ever you don't need
    # additional modules go here
  ];
}
