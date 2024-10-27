{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.desktop.fonts;
in
{
  options.features.desktop.fonts.enable = mkEnableOption "install additional fonts for desktop apps";

  config = mkIf cfg.enable {

    home.packages = with pkgs; [
      (nerdfonts.override {
        fonts = [
          "JetBrainsMono"
          "FiraCode"
          "CascadiaCode"
          "Monaspace"
          "Noto"
        ];
      })
      font-awesome_5
      noto-fonts
    ];
    fonts.fontconfig.enable = true;
  };
}
