{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.features.desktop.fonts;
  myNerdFont = pkgs.nerdfonts.override {
    fonts = [
      "JetBrainsMono"
      "FiraCode"
      "CascadiaCode"
      "Monaspace"
      "Noto"
    ];
  };
in
{
  options.features.desktop.fonts.enable = mkEnableOption "install additional fonts for desktop apps";

  config = mkIf cfg.enable {

    home.packages = with pkgs; [
      myNerdFont
      font-manager
      font-awesome_5
      noto-fonts
    ];
  };
}
