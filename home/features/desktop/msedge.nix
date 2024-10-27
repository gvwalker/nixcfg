{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.desktop.msedge;
in
{
  options.features.desktop.msedge.enable = mkEnableOption "enable neofetch";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [ microsoft-edge ];
  };
}
