{
  lib,
  config,
  pkgs,
  ...
}: let
    themeConfig = import ./themes/themeConfig.nix;
in {
  programs.wofi = {
      enable = true;
      
      style = ''
        * {
            font-family: "${themeConfig.theme.font}";
            font-weight: 500;
            font-size: 12px;
        }

        #window {
            background-color: #${themeConfig.theme.colors.alt-bg};
            color: #${themeConfig.theme.colors.alt-fg};
            border-radius: ${toString themeConfig.theme.rounding}px;
        }

        #outer-box {
            padding: 20px;
        }

        #input {
            background-color: #${themeConfig.theme.colors.bg};
            border: 0px solid #${themeConfig.theme.colors.primary-bg};
            padding: 8px 12px;
        }

        #scroll {
            margin-top: 20px;
        }

        #inner-box {}

        #img {
            padding-right: 8px;
        }

        #text {
            color: #${themeConfig.theme.colors.color7};
        }

        #text:selected {
            color: #${themeConfig.theme.colors.fg};
        }

        #entry {
            padding: 6px;
        }

        #entry:selected {
            background-color: #${themeConfig.theme.colors.primary-bg};
            color: #${themeConfig.theme.colors.primary-fg};
        }

        #unselected {}

        #selected {}

        #input,
        #entry:selected {
            border-radius: ${toString (themeConfig.theme.rounding - 10)}px;
        }
    '';

      settings = {
        allow_markup = true;
        width = 600;
        show = "drun";
        prompt = "Apps";
        normal_window = true;
        layer = "top";
        term = "alacritty";
        height = "305px";
        orientation = "vertical";
        halign = "fill";
        line_wrap = "off";
        dynamic_lines = false;
        allow_images = true;
        image_size = 24;
        exec_search = false;
        hide_search = false;
        parse_search = false;
        insensitive = true;
        hide_scroll = true;
        no_actions = true;
        sort_order = "default";
        gtk_dark = true;
        filter_rate = 100;
        key_exit = "Escape";
        };
    };
  };
}