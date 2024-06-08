{
  config,
  ...
}: {
  imports = [
     ./template
    ${config.home.homeDirectory}/.cache/wal/template.nix
  ];

  config.theme = {
    font-mono = "FiraCode Nerd Font Mono";
    font = "JetBrainsMono NFM";

    wallpaper = "./themes/wallpapers/Lofi-Computer.png";

    rounding = 0;
    gaps-in = 2;
    gaps-out = 4;
    border-size = 2;

    waybar = {
      transparent = false;
      float = false;
    };
  };
}
