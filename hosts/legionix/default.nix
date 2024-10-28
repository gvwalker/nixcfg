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
        plasma.enable = true;
      };
      sound.enable = true;
      nvidia.enable = true;
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
}
