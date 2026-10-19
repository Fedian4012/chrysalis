{config, pkgs, ...}:

{
  networking = {
    hostName = "tour-hp-nixos";
    networkmanager.enable = true;
    firewall = {
      enable = false;
    };
  };
}