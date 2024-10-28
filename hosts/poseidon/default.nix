{
  imports = [
    ../common
    ./configuration.nix
  ];

  features = {
    dev = {
      podman.enable = true;
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
    enable = true;
    allowSFTP = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = "no";
    };
  };
}
