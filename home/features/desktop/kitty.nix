{
  config,
  lib,
  ...
}:
with lib;
let
  cfg = config.features.desktop.kitty;
in
{
  options.features.desktop.kitty.enable = mkEnableOption "enable kitty terminal emulator";

  config = mkIf cfg.enable {
    programs.kitty = {
      enable = true;
    };
  };
}
