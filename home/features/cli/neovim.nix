{
  config,
  lib,
  ...
}:
with lib;
let
  cfg = config.features.cli.neovim;
in
{
  options.features.cli.neovim.enable = mkEnableOption "enable neovim";

  config = mkIf cfg.enable {
    programs.neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };

    home.sessionVariables = {
      EDITOR = mkForce "nvim";
    };
  };
}
