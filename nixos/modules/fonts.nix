{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
    fonts.packages = with pkgs; [
      ( nerdfonts.override { 
        fonts = [ 
          "FiraCode" 
          "JetBrainsMono" 
        ]; 
      } )
      jetbrains-mono
      openmoji-color
  ];
}
