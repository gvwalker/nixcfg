{
  imports = [
    ../common
    ./configuration.nix
  ];

  features = {
    dev = {
      podman.enable = true;
    };
  };
}
