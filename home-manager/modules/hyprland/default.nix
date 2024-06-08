{
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
      ./themes/themeConfig.nix

      ./pywal.nix
      ./hyprland.nix
      ./waybar.nix
      ./dunst.nix
      ./wofi.nix
  ];
}
