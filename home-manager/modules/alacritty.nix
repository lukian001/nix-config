{
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    alacritty = {
      enable = true;

      settings = {
        window.padding = {
          x = 10;
          y = 10;
        };

        font = {
          size = 14;

          normal = {
            family = config.theme.font;
            style = "Regular";
          };
        };
      };
    };
  };
}
