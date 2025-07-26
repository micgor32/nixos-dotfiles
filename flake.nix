{
  description = "Personal NixOS system config by MDr164";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";  
    };
  };

  outputs = inputs @ { self, nixpkgs, nixpkgs-unstable, nixos-hardware, home-manager }:
    let
      system = "x86_64-linux";
      overlay-unstable = final: prev: {
        unstable = nixpkgs-unstable.legacyPackages.${prev.system};
      };
    in {
      nixosConfigurations.framework-mg = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ({ config, pkgs, ... }: {
	    nixpkgs = {
	      overlays = [ overlay-unstable ];
	      config.allowUnfree = true;
	    };
	  })
          ./configuration.nix
          nixos-hardware.nixosModules.framework-13-7040-amd
          home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.user = import ./home.nix;
            };
          }
        ];
      };
    };
}

