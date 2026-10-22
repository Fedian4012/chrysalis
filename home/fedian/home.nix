{ config, pkgs, ... }:

{
  home.username = "fedian";
  home.homeDirectory = "/home/fedian";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    deezer-desktop
    virtualbox
  ];

  programs.firefox.enable = true;
  programs.thunderbird.enable = true;
  programs.discord.enable = true;
  programs.libreoffice.enable = true;
  programs.vscodium.enable = true;
  programs.home-manager.enable = true;
}
