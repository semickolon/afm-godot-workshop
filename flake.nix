{
  description = "workshop";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
    presenterm.url = "github:mfontanini/presenterm";
  };

  outputs = { self, nixpkgs, presenterm }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          presenterm.packages.${system}.default
       	];
      };
    };
}
