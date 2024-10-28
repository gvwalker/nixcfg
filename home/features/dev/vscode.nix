{
  config,
  lib,
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
  };
}
