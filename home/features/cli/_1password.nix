{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.cli._1password;
in
{
  options.features.cli._1password.enable = mkEnableOption "enable 1password cli";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      _1password
    ];
  };
}
