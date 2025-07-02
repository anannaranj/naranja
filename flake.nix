{
  description = "Naranj";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = { nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };

        modules = [ ./modules ];
      };
    };
  };
}

