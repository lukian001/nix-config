{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/programs.nix

    ./modules/hyprland/default.nix
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
    username = "lstreul";
    homeDirectory = "/home/lstreul";
  };

  home.packages = with pkgs; [
    kdePackages.polkit-kde-agent-1

    neofetch
    pfetch
    spotify
    
    devenv
    lunarvim
  ];

  systemd.user.startServices = "sd-switch";
  
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
