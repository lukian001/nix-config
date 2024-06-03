{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./kde.nix
        ./hyprland.nix
    ];
}