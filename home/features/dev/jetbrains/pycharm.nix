{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.jetbrains.pycharm;
in
{
  options.features.dev.jetbrains.pycharm.enable = mkEnableOption "enable jetbrains pycharm";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      pycharm-professional
    ];
  };
}
