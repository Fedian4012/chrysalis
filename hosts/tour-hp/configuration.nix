{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ./boot.nix
      ./desktop.nix
      ./locale.nix
      ./network.nix
      ./packages.nix
      ./users.nix

      ./services
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; # Did you read the comment?

}
