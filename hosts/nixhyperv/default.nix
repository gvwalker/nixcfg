{
  imports = [
    ../common
    ./configuration.nix
  ];

  features = {
    dev = {
      podman.enable = false;
    };
    desktop = {
      env = {
        plasma.enable = true;
      };
      sound.enable = true;
      nvidia.enable = false;
    };
  };

  services.printing.enable = true;

  services.openssh = {
    enable = false;
    allowSFTP = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = "no";
    };
  };

  virtualisation.hypervGuest.videoMode = "1920x1080";
  boot.blacklistedKernelModules = [ "hyperv_fb" ];
}
