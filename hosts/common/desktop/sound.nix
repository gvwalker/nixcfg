{
  config,
  lib,
  ...
}:
with lib;
let
  cfg = config.features.desktop.sound;
in
{
  options.features.desktop.sound.enable = mkEnableOption "enable sound";

  config = mkIf cfg.enable {
    # Enable sound with pipewire.
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
