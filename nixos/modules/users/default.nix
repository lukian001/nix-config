{
  lib,
  config,
  pkgs,
  ...
}: let
  variable = import ../../../variables.nix;
in{
  users.users = {
    ${variable.username} = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
      ];
      
      description = variable.description;

      shell = pkgs.zsh;

      extraGroups = [ "networkmanager" "wheel"];
    };
  };
}
