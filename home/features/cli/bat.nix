{
  config,
  lib,
  ...
}:
with lib;
let
  cfg = config.features.cli.bat;
in
{
  options.features.cli.bat.enable = mkEnableOption "enable bat as a replacement for cat";

  config = mkIf cfg.enable {
    programs.bat = {
      enable = true;
    };

    programs.zsh.shellAliases = {
      cat = "bat";
    };

    home.file.".config/bat/config".text = ''
      --theme="Dracula"

      # Show line numbers, Git modifications and file header (but no grid)
      --style="numbers,changes,header"
    '';
  };
}
