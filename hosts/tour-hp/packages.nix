{config, pkgs, ...}:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    btop
    wget
    tree
    nh
  ];
}