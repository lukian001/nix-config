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

    zsh = {
      enable = true;
    };

    firefox = {
      enable = true;
    };

    git = {
      enable = true;
    };
  };
}
