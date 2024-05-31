{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  users.users = {
    lstreul = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
      ];
      
      description = "Lucian Streulea";

      initialHashedPassword = "test";

      extraGroups = [ "networkmanager" "wheel"];
    };
  };
}
