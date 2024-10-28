{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  
  networking.hostName = "nixwsl";

  environment.systemPackages = with pkgs; [ wget ];
  
  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
