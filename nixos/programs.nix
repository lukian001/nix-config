{
  lib,
  config,
  pkgs,
  ...
}: {
  programs.hyprland.enable = true;
  programs.zsh.enable = true;
  programs.alacritty.enable = true;
  programs.git.enable = true;
}