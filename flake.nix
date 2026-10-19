{
  description = "Chrysalis - Configuration NixOS de Fedian4012";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.tour-hp = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Point d'entrée système (ton configuration.nix actuel)
        ./hosts/tour-hp/configuration.nix

        # Intégration de Home Manager
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          
          # Remplace "fedian" par ton nom d'utilisateur si besoin
          home-manager.users.fedian = import ./home/fedian/home.nix; 
        }
      ];
    };
  };
}