{
  lib,
  config,
  pkgs,
  ...
}: {
    programs.vscode = {
        enable = true;

        extensions = with pkgs.vscode-extensions; [
            vscode.nix
        ];
    };
}