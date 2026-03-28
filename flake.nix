{

  description = "NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self, 
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let 
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      pc0 = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs;};
        modules =[
        ./systems/pc0/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.main = import ./modules/home/users/main/home.nix;
          home-manager.backupFileExtension = "backup";
          home-manager.extraSpecialArgs = { inherit inputs;};
        }
        ];
        };
      };
    };
}
