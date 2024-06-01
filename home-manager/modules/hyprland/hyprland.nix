{
  lib,
  config,
  pkgs,
  ...
}: let 
        rofiStart = import ./rofi.nix { inherit config pkgs lib; exportedScript = true; };
    in{
        wayland.windowManager.hyprland = {
            enable = true;
            systemd.enable = true;
            settings = {
                exec-once  = [
                    "waybar"
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
                    gaps_in = 1;
                    gaps_out = 2;
                };

                decoration = {
                    rounding = 2;
                    shadow_ignore_window = true;
                    drop_shadow = true;
                    shadow_range = 50;
                    shadow_render_power = 3;
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
                    "$mod, F, fullscreen"
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
