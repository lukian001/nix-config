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
                env = [
                    "BROWSER,librewolf"
                    "QT_IM_MODULE,fcitx"
                    "XMODIFIERS,@im=fcitx"
                    "SDL_IM_MODULE,fcitx"
                    "GLFW_IM_MODULE,ibus"
                    "SWWW_TRANSITION,grow"
                    "SWWW_TRANSITION_STEP,200"
                    "SWWW_TRANSITION_DURATION,1.5"
                    "SWWW_TRANSITION_FPS,240"
                    "SWWW_TRANSITION_WAVE,80,40"
                    "QT_AUTO_SCREEN_SCALE_FACTOR,1"
                    "QT_QPA_PLATFORM,wayland;xcb"
                    "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
                    "QT_QPA_PLATFORMTHEME,qt5ct"
                    "QT_STYLE_OVERRIDE,kvantum"
                ];

                exec-once  = [
                    "waybar"
                    "dunst"
                ];
                
                monitor = ", highres, auto, 1";

                general = {
                    gaps_in = 1;
                    gaps_out = 2;
                };

                "$mod" = "SUPER";
                bind = [
                    "$mod, F, exec, firefox"
                    "$mod, Q, killactive"
                    "$mod, D, exec, pgrep wofi >/dev/null 2>&1 && killall wofi || wofi --show drun}"
                    "$mod, Return, exec, alacritty"			
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