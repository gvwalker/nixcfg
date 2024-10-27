{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.jetbrains.toolbox;
in
{
  options.features.dev.jetbrains.toolbox.enable = mkEnableOption "enable jetbrains toolbox";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      jetbrains-toolbox
    ];
  };
}
