{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.jetbrains.rider;
in
{
  options.features.dev.jetbrains.rider.enable = mkEnableOption "enable jetbrains rider .net ide";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      rider
    ];
  };
}
