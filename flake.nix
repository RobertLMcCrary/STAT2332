{
  description = "Dev Flake for my STATS Class";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, devshell, ... }:
    let
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];

      eachSystem =
        f:
        nixpkgs.lib.genAttrs systems (
          system:
          f {
            inherit system;
            pkgs = nixpkgs.legacyPackages.${system};
          }
        );
    in
    {
      devShells = eachSystem (
        { pkgs, system, ... }:
        let
          rEnv = pkgs.rWrapper.override {
            packages = with pkgs.rPackages; [
              tidyverse
              rmarkdown
              knitr
              testthat
              styler
              lintr
            ];
          };
        in
        {
          default = (devshell.legacyPackages.${system}.mkShell) {
            name = "STATS";

            packages = [
              rEnv
              pkgs.radianWrapper
            ];

            commands = [
              {
                name = "run";
                category = "app";
                help = "Run main.R";
                command = "Rscript main.R \"$@\"";
              }
              {
                name = "repl";
                category = "app";
                help = "Start a radian REPL with project packages available";
                command = "radian";
              }
              {
                name = "fmt";
                category = "quality";
                help = "Format R code with styler";
                command = "Rscript -e 'styler::style_dir(\".\")'";
              }
              {
                name = "lint";
                category = "quality";
                help = "Lint R code with lintr";
                command = "Rscript -e 'lintr::lint_dir(\".\")'";
              }
              {
                name = "test";
                category = "quality";
                help = "Run tests with testthat";
                command = "Rscript -e 'testthat::test_dir(\"tests\")'";
              }
            ];
          };
        }
      );

      formatter = eachSystem ({ pkgs, ... }: pkgs.nixfmt);
    };
}
