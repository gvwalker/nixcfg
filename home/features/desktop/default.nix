{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./kitty.nix
    ./_1password.nix
  ];

  home.packages =
    with pkgs;
    [
    ];
}
