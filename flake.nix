{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, ... }: {
      nixosConfigurations = {
        prometheus = nixpkgs.lib.nixosSystem {
          modules = [ ./configuration.nix ];
        };
      };
    };
}