{
  lib,
  config,
  pkgs,
  ...
}: {
    programs.firefox.enable = true;
    programs.wofi.enable = true;
}