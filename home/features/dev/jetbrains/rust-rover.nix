{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.jetbrains.rust-rover;
in
{
  options.features.dev.jetbrains.rust-rover.enable = mkEnableOption "enable jetbrains rust-rover";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      rust-rover
    ];
  };
}
