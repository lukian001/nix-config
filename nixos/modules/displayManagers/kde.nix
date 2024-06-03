{
  lib,
  config,
  pkgs,
  ...
}: {
    services = {
        displayManager = {
            sddm = {
              enable = true;
            };
        };


        desktopManager = {
            plasma6 = {
                enable = true;
            };
        };
    };
}