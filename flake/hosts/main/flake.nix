{
  description = "Naranja";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };

        modules = [
          ../../modules/hardware-configuration.nix
          ../../modules/boot.nix
          ../../modules/locales.nix
          ../../modules/networking.nix
          ../../modules/audio.nix
          ../../modules/environments.nix
          ../../modules/virtualization.nix
          ../../modules/packages.nix

          #home-manager.nixosModules.home-manager
          #{ home-manager = { users.naranj = import ./home.nix; }; }
          ./home.nix
        ];
      };
    };
  };
}

