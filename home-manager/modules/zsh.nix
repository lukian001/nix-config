{
  lib,
  config,
  pkgs,
  ...
}: let
    variable = import ../../variables.nix;
in {
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            update-flake = "cd ~/nix-config && 
            git add . && 
            nix flake update";

            update-home = "cd ~/nix-config && 
            git add . && 
            home-manager switch --flake .#" + variable.username + 
            "@" + variable.hostName;

            update-system = "cd ~/nix-config && 
            git add . && 
            sudo nixos-rebuild switch --flake .#" + variable.hostName;
        };

        oh-my-zsh = {
            enable = true;

            plugins = [ 
                "git" 
            ];

            theme = "robbyrussell";
        };
    };
}
