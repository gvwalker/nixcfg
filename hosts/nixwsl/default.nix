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
        plasma.enable = false;
      };
      sound.enable = false;
      nvidia.enable = false;
    };
  };

  services.printing.enable = false;

  services.openssh = {
    enable = false;
    allowSFTP = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };
}
