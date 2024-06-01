{
  lib,
  config,
  pkgs,
  ...
}:  let 
    rofiStart = ''

    ''; in {
        config = lib.mkIf ( config ? exportedScript ) {
            launcher = rofiStart;
        };

        programs.rofi = {
            enable = true;
        };
}