{
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
      ./themes/themeConfig.nix

      ./hyprland.nix
      ./waybar.nix
      ./dunst.nix
      ./wofi.nix
  ];
}
