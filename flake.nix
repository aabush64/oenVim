{
  description = "aabush64's neovim config";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    alejandra = {
      url = "github:feel-co/alejandra";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: let
    system = "x86_64-linux";
    pkgs = inputs.nixpkgs.legacyPackages.${system};
  in {
    packages.${system} = rec {
      default = oenVim;
      oenVim =
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [
            ./configuration.nix
            ./languages.nix
            ./pwugins.nix
          ];
          extraSpecialArgs = {
            alejandra = inputs.alejandra.defaultPackge.${system};
          };
        }).neovim;
    };

    devShells.${system} = rec {
      default = oenVim;
      oenVim = pkgs.mkShell {
        packages = [
          inputs.self.packages.default
        ];

        shellHook = ''
          nvim
        '';
      };
    };
  };
}
