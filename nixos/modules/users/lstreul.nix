{
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

      extraGroups = [ "networkmanager" "wheel"];
    };
  };
}
