{ config, pkgs, ... }:
{
  imports = [
    ./home.nix
    ../features/cli
    ../features/dev
    ../features/desktop
    ../common
  ];

  features = {
    cli = {
      fzf.enable = true;
      neofetch.enable = true;
      neovim.enable = true;
    };
    dev = {
      vscode.enable = true;
    };
    desktop = {
      fonts.enable = true;
      kitty.enable = true;
    };
  };

  home.packages = with pkgs; [
    microsoft-edge
  ];
}
