{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.vscode;
in
{
  options.features.dev.vscode.enable = mkEnableOption "enable vscode";

  config = mkIf cfg.enable {
    programs.vscode.enable = true;

    home.packages = with pkgs; [
      nixd
      nixfmt-rfc-style
    ];
  };
}
