{
  lib,
  config,
  pkgs,
  ...
}: {
    environment.systemPackages = with pkgs; [
        pamixer
        networkmanagerapplet
    ];

    services = {
        xserver = {
            desktopManager = {
                gdm = {
                    enable = true;
                };
            };
        };
    };

    programs = {
        light = {
            enable = true;
        };

        hyprland = {
            enable = true;
        };
    };
}
