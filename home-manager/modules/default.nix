{
  lib,
  config,
  pkgs,
  ...
}: {
    imports = [
        ./alacritty.nix
        ./hyprland
        ./zsh.nix
        ./vscode.nix
        ./git.nix
        ./cava.nix
    ];
}