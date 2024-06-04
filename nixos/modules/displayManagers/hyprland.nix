{
  lib,
  config,
  pkgs,
  ...
}: {
    environment.systemPackages = with pkgs; [
        pamixer
        acpi
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
