{
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    firefox = {
      enable = true;
    };

    alacritty = {
      enable = true;
    };
  };
}
