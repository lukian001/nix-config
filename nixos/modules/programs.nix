{
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    hyprland = {
      enable = true;
    };

    zsh = {
      enable = true;
    };

    git = {
      enable = true;
    };

    nm-applet = {
      enable = true;
    };
  };
}
