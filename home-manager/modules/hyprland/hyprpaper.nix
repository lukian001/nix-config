{ 
    pkgs, 
    config, 
    ... 
}: let
    themeConfig = import ./themes/themeConfig.nix;
in {
  home.packages = with pkgs; [ 
    hyprpaper 
];

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/.config/wallpapers/${themeConfig.theme.wallpaper}
    wallpaper = ,~/.config/wallpapers/${themeConfig.theme.wallpaper}
    ipc=true
    splash=false
  '';
}