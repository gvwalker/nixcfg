{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.desktop._1password;
in
{
  options.features.desktop._1password.enable = mkEnableOption "enable 1password gui";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      _1password-gui
    ];
  };
}
