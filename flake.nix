{
  description = "Your new nix config";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-hardware,
    ...
  } @ inputs: let
    inherit (self) outputs;
    variable = import ./variables.nix;
  in {
    nixosConfigurations = {
      ${variable.hostName} = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs; };
        modules = [
          ./nixos/configuration.nix
          
          nixos-hardware.nixosModules.common-gpu-nvidia-disable
        ];
      };
    };

    homeConfigurations = {
      "${toString (variable.username)}@${toString (variable.hostName)}" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;

        extraSpecialArgs = { inherit inputs outputs; };

        modules = [
          ./home-manager/home.nix
        ];
      };
    };
  };
}
