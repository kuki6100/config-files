{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    #honkai-railway-grub-theme.url = "github:voidlhf/StarRailGrubThemes";
    mangowm = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, mangowm, ... }@inputs: let
	inherit (nixpkgs) lib;
  in {
	nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      		system = "x86_64-linux";
      		modules = [
			./configuration.nix
			mangowm.nixosModules.mango
		];
    	};
    };
}
