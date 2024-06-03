{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./system
        ./users
        ./displayManagers
        
        ./fonts.nix
        ./programs.nix
    ];
}