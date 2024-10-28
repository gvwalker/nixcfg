{ ... }:
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
      bat.enable = true;
      neofetch.enable = true;
      neovim.enable = true;
      _1password.enable = false;
    };
    dev = {
      vscode.enable = false;
      nix-dev.enable = true;
      jetbrains = {
        toolbox.enable = false;
        rider.enable = false;
        rust-rover.enable = false;
        pycharm.enable = false;
      };
    };
    desktop = {
      fonts.enable = false;
      kitty.enable = false;
      _1password.enable = false;
      msedge.enable = false;
    };
  };
}