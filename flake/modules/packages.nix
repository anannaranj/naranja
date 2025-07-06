{ pkgs, inputs, ... }: {

  nixpkgs.config.allowUnfree = true;

  programs.steam.enable = true;
  programs.nix-ld.enable = true;
  services.printing.enable = true;

  environment.systemPackages = with pkgs;
    [
      vim
      steam-run
      discord
      tmux
      temurin-jre-bin-21
      btop
      neovim
      git
      gcc
      ripgrep
      unzip
      fd
      cargo
      fuzzel
      swaylock
      xorg.libX11
      alacritty
      home-manager
    ] ++ (with inputs; [ zen-browser.packages."${system}".beta ]);

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
}
