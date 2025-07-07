{ config, pkgs, ... }:

{
  users.users.naranj = {
    isNormalUser = true;
    description = "Naranj";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # OK SO THIS DOESN'T WORK
  let home = home-manager.nixosModules.home-manager.home

  home.username = "naranj";
  home.homeDirectory = "/home/naranj";

  home.packages = with pkgs; [ hello ];

  home.file = { };

  home.sessionVariables = { EDITOR = "nvim"; };

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
