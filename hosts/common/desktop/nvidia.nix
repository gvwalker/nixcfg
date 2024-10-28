{ config, lib, ... }:
with lib;
let
  cfg = config.features.desktop.nvidia;
in
{
  options.features.desktop.nvidia.enable = mkEnableOption "enable nvidia gpu";

  config = mkIf cfg.enable {
    hardware.graphics.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
