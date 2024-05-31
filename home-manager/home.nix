# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./.config/hyprland/hyprland.nix
    ./.config/zsh.nix
  ];

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
    neofetch
    pfetch
    spotify
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  programs.firefox.enable = true;
  programs.vscode.enable = true;
  programs.alacritty.enable = true;
  programs.wofi.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
  
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
