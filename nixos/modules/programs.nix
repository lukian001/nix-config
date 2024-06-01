{
  lib,
  config,
  pkgs,
  ...
}: {
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
