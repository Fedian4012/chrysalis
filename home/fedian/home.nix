{ config, pkgs, ... }:

{
  home.username = "fedian";
  home.homeDirectory = "/home/fedian";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    vscodium
    discord
    deezer-enhanced
  ];

  programs.firefox.enable = true;
  programs.home-manager.enable = true;
}
