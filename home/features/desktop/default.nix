{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./kitty.nix
  ];

  home.packages =
    with pkgs;
    [
    ];
}
