{
  lib,
  config,
  pkgs,
  ...
}: let
  variable = import ../../variables.nix;
in {
  programs = {
    nm-applet = {
      enable = true;
    };

    hyprland = {
      enable = true;
    };

    zsh = {
      enable = true;
    };

    git = {
      enable = true;
    };
  };
}
