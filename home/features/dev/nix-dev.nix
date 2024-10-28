{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.dev.nix-dev;
in
{
  options.features.dev.nix-dev.enable = mkEnableOption "enable nix development tools";

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      nixd
      nixfmt-rfc-style
    ];
  };
}
