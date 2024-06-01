{
  lib,
  config,
  pkgs,
  ...
}: let 
    variable = import ../../variable.nix; 
in{
    programs.git = {
        enable = true;

        userEmail = variable.git.email;
        userName = variable.git.username;
    };
}
