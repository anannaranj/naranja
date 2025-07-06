{ config, pkgs, ... }:

{
  home.username = "naranj";
  home.homeDirectory = "/home/naranj";

  home.packages = with pkgs; [ hello ];

  home.file = { };

  home.sessionVariables = { EDITOR = "nvim"; };

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
