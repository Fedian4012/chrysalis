{config, pkgs, ...}:

{
  users.users = {
    "fedian" = {
      isNormalUser = true;
      description = "Fedian4012";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}