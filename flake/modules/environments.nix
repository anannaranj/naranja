{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      desktopManager.xfce.enable = true;
    };
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
    };
  };
  programs = {
    niri = { enable = true; };
    xwayland = { enable = true; };
  };
  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1";
    systemPackages = with pkgs; [ xwayland-satellite ];
  };
}
