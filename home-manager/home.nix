{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: let
  variable = import ../variables.nix;
in {
  imports = [
    ./modules/programs.nix

    ./modules/hyprland
    ./modules/zsh.nix
    ./modules/vscode.nix
  ];

  programs.home-manager.enable = true;

  nixpkgs = {
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];

    config = {
      allowUnfree = true;

      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = variable.username;
    homeDirectory = variable.homeDirectory;
  };

  home.packages = with pkgs; [
    kdePackages.polkit-kde-agent-1
    
    neofetch
    pfetch
    spotify
    obsidian
    discord

    microsoft-edge
    devenv
  ];

  systemd.user.startServices = "sd-switch";
  
  home.stateVersion = variable.stateVersion;
}
