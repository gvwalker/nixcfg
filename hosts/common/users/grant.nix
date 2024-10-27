{
  config,
  pkgs,
  inputs,
  ...
}:
{
  users.users.grant = {
    initialHashedPassword = "$y$j9T$yyqGlpFxKajjUvmsake/N0$bU6eVgtPQdMqXTvepzzOJMs3Dzx6/WZv4hLs/JopoG1";
    isNormalUser = true;
    description = "Grant Walker";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmfPEAUYh7oUolR7O59AbIC3Y7tLLFqiKAkgkqnKKsRRSTPLVZ+kJ7CTbo2TYt5flFARcdQNsJt/uOWCmy/nBGZ6zsLwgAtTRc4XPgq53cmE3SPMzU5m+Cs76QNpSq5LN8nrKDSXGXWg/iik4Hu4nnl8Tdpwe0TZb2vSV7ExbFC6E6/3qUBaourx+oyK39XgaqzB1UlVbKNWvTYKUkZQY4/knV8O8b1sVRfWkbIZENhqHgkWhGIqXxk+6+a3BbrakD+rW64aBy81468y12Q1hH6Edb/KIlS4CY0VPdr3MHlK1I3xrUZxF0HBh/pkr2BD8GRBG/rNANYXTl/Ii7CCWAXO8DhZrtJ6kmoMoHxhgcvt8aJey+1E1dNTzCBsEHAzXahVRC/OQUd+f5POyBhnFofb0JzP7+TgalqOk6co1jT+VVnRtxsBE+cJmCm4eLz7se10+v6i0zSjsKMqAGGUBtrCnvFg0D9XAYtQktaPlqnYHs4RybdMlMJ9GNg5+MoFU="
    ];
    packages = [ inputs.home-manager.packages.${pkgs.system}.default ];
  };
  home-manager.users.grant = import ../../../home/grant/${config.networking.hostName}.nix;
}
