{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./kitty.nix
    ./_1password.nix
    ./msedge.nix
  ];

  home.packages =
    with pkgs;
    [
    ];
}
