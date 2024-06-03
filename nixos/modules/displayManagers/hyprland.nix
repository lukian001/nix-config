{
  lib,
  config,
  pkgs,
  ...
}: {
    environment.systemPackages = with pkgs; [
        pamixer
    ];

    programs = {
        light = {
            enable = true;
        };

        hyprland = {
            enable = true;
        };
    };
}
