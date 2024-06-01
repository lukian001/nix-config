{
  lib,
  config,
  pkgs,
  ...
}: let
  variable = ./../../variables.nix;
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

      userName = variable.git.username;
      userEmail = variable.git.email;
    };
  };
}
