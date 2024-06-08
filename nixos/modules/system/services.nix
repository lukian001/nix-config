{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    services = {
        power-profiles-daemon = {
            enable = false;
        };

        thermald = {
            enable = true;
        };

        tlp = {
            enable = true;

            settings = {
                CPU_SCALING_GOVERNOR_ON_AC = "powersave";
                CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

                CPU_ENERGY_PERF_POLICY_ON_BAT = "powersave";
                CPU_ENERGY_PERF_POLICY_ON_AC = "powersave";

                CPU_MIN_PERF_ON_AC = 0;
                CPU_MAX_PERF_ON_AC = 80;
                CPU_MIN_PERF_ON_BAT = 0;
                CPU_MAX_PERF_ON_BAT = 80;

                START_CHARGE_THRESH_BAT0 = 40;
                STOP_CHARGE_THRESH_BAT0 = 80;
            };
        };

        xserver = {
            enable = true;

            xkb = {
                layout = "us";
                variant = "";
            };
        };
    };
}
