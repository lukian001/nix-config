{
  lib,
  config,
  pkgs,
  ...
}: let 
    themeConfig = import ./themes/themeConfig.nix;
in {
        wayland.windowManager.hyprland = {
            enable = true;

            systemd.enable = true;

            settings = {
                exec-once  = [
                    "waybar"
                    "polkit-kde-agent-1"
                    "${pkgs.hyprpaper}/bin/hyprpaper"
                    "nm-applet --indicator"
                    "dunst"
                ];
                
                monitor = [
                    "eDP-1, highres, auto, 1"
                    "HDMI-A-1, 2560x1440, auto, 1"
                ];

                input = {
                    kb_layout = "us";
                    follow_mouse = true;
                    force_no_accel = 1;
                    touchpad = {
                        natural_scroll = 1;
                    };
                };

                general = {
                    resize_on_border = true;
                    gaps_in = themeConfig.theme.gaps-in;
                    gaps_out = themeConfig.theme.gaps-out;
                    border_size = themeConfig.theme.border-size;
                    "col.active_border" = "rgba(${themeConfig.theme.colors.primary-bg}ff)";
                    "col.inactive_border" = "rgba(00000055)";
                    border_part_of_window = true;
                    layout = "master";
                };

                decoration = {
                    rounding = themeConfig.theme.rounding;
                    drop_shadow = true;
                    shadow_range = 20;
                    shadow_render_power = 3;
                    "col.shadow" = "rgba(00000055)";
                    blur = { enabled = false; };
                };

                master = {
                    new_is_master = true;
                    new_on_top = true;
                };

                animations = {
                    enabled = true;
                    bezier = [ "easeinoutsine, 0.37, 0, 0.63, 1" ];
                    animation = [ 
                        "windows,1,2,easeinoutsine,slide" 
                        "border,1,10,default"
                        "fade,1,1,default"
                        "workspaces,1,2,easeinoutsine,slide"
                    ];
                };
                
                gestures = {
                    workspace_swipe = true;
                };

                "$mod" = "SUPER";
                bindm = [
                    # Move and resize windows with mouse too
                    "$mod, mouse:272, movewindow"
                    "$mod SHIFT, mouse:272, resizewindow"
                ];

                bind = [
                    "$mod SHIFT, Q, exit"
                    "$mod, Q, killactive"

                    "$mod, F, exec, firefox"
                    "$mod, E, exec, dolphin"
                    "$mod, D, exec, pgrep wofi >/dev/null 2>&1 && killall wofi || wofi --show drun"
                    "$mod, Return, exec, alacritty"

                    "$mod, V, togglefloating"
                    "$mod SHIFT, F, fullscreen"
                ] ++ (
                    builtins.concatLists (builtins.genList (
                        x: let
                            ws = let
                                c = (x + 1) / 10;
                            in
                                builtins.toString (x + 1 - (c * 10));
                        in [
                            "$mod, ${ws}, workspace, ${toString (x + 1)}"
                            "$mod SHIFT, ${ws}, movetoworkspace, ${toString(x + 1)}"
                        ]
                    )
                    10)
                );
            };
        };
}
