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
          ./hosts/main/config.nix
          home-manager.nixosModules.home-manager
          { home-manager = { users.naranj = import ./hosts/main/home.nix; }; }
        ];
      };
      #      zojaja = nixpkgs.lib.nixosSystem {
      #        specialArgs = { inherit inputs; };
      #
      #        modules = [
      #          ./hosts/zojaja/config.nix
      #          home-manager.nixosModules.home-manager
      #          { home-manager = { users.naranj = import ./hosts/zojaja/home.nix; }; }
      #        ];
      #};
    };
  };
}

