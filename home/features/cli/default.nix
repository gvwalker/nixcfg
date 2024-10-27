{ pkgs, ... }:
{
  imports = [
    ./fzf.nix
    ./neofetch.nix
    ./neovim.nix
    ./_1password.nix
    ./bat.nix
  ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
      grep = "rg";
      ps = "procs";
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    icons = "auto";
    git = true;
    extraOptions = [
      "-l"
      "-a"
    ];
  };

  programs.starship.enable = true;

  home.packages = with pkgs; [
    coreutils
    fd
    btop
    jq
    procs
    ripgrep
    tldr
    zip
  ];
}
