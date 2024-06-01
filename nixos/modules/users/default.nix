{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./lstreul.nix
    ];

    users = {
      defaultUserShell = pkgs.zsh; 
    };
}