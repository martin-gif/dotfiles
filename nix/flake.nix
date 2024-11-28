{
  description = "Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    mac-app-util.url = "github:hraban/mac-app-util";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, mac-app-util, ...}:
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#MacBook-Pro-von-Marvin
    darwinConfigurations."Marvin" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
  
      specialArgs = { inherit inputs; };

      modules = [ 
        ./darwin-config.nix
        mac-app-util.darwinModules.default
        home-manager.darwinModules.home-manager {
        
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.sharedModules = [
            mac-app-util.homeManagerModules.default
          ];
          home-manager.user.Marvin = import ./home.nix;
        }
      ];
    };
  };
}