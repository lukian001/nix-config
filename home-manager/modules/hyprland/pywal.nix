{
  lib,
  config,
  pkgs,
  ...
}: {
    programs = {
        pywal = {
            enable = true;
        };
    };

    xdg = {
        enable = true;

        configFile."wal/templates/template.nix".text = ''
            {
                config, 
                ...
            } :{
                config.theme = {
                    colors = {
                        fg = "{foreground.strip}";

                        color0 = "{foreground.strip}";
                        color1 = "{foreground.strip}";
                        color2 = "{foreground.strip}";
                        color3 = "{foreground.strip}";
                        color4 = "{foreground.strip}";
                        color5 = "{foreground.strip}";
                        color6 = "{foreground.strip}";
                        color7 = "{foreground.strip}";
                        color8 = "{foreground.strip}";
                        color9 = "{foreground.strip}";
                        color10 = "{foreground.strip}";
                        color11 = "{foreground.strip}";
                        color12 = "{foreground.strip}";
                        color13 = "{foreground.strip}";
                        color14 = "{foreground.strip}";
                        color15 = "{foreground.strip}";
                    };
                };
            }
        '';
    };
}