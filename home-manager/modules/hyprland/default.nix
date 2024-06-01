{
  lib,
  config,
  pkgs,
  ...
}: let
  themeConfig = ./themes/themeConfig.nix;
in {
  config = {
    theme = themeConfig.theme;
  };

    imports = [
        ./hyprland.nix
        ./waybar.nix
        ./dunst.nix
        ./wofi.nix
    ];
}