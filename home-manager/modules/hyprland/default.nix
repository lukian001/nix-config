{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./hyprland.nix
        ./waybar.nix
        ./dunst.nix
        ./programs.nix
    ];
}