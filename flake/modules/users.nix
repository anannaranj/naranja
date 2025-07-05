{ pkgs, ... }: {
  users.users.naranj = {
    isNormalUser = true;
    description = "Naranj";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs;
      [
        # Here you can add packages for only one user
      ];
  };
}
