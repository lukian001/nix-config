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

    wofi = {
      enable = true;
    };
  };
}