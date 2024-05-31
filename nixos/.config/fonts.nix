{
  lib,
  config,
  pkgs,
  ...
}: {
    fonts.packages = with pkgs; [
        jetbrains-mono
    ];
}