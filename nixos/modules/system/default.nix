{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./locales.nix
        ./sound.nix
        ./bootloader.nix
        ./network.nix
        ./services.nix
    ];
}