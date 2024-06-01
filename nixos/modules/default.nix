{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./system
        ./users

        ./fonts.nix
        ./programs.nix
    ];
}