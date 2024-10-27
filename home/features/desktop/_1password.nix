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

    home.file = {
      ".config/autostart/1password.desktop".text = ''
        [Desktop Entry]
        Categories=Office;
        Comment=Password manager and secure wallet
        Exec=1password --silent %U
        Icon=1password
        Name=1Password
        StartupNotify=true
        StartupWMClass=1Password
        Terminal=false
        Type=Application
        X-KDE-SubstituteUID=false
      '';
    };
  };
}
