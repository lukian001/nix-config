{
  lib,
  config,
  pkgs,
  ...
}: {
    services = {
        xserver = {
            desktopManager = {
                pantheon = {
                    enable = true;
                };
            };

            displayManager = {
                lightdm = {
                    greeters = {
                        pantheon = {
                            enable = true;
                        };
                    };
                };
            };
        };
    };
}
