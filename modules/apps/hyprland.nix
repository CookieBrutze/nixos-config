{ config, pkgs, ... }:

{
    programs.hyprland = {
    enable = true;
    extraOptions = ''
      exec = "kitty";
    '';
    };

    environment.systemPackages = with pkgs; [
        # Packages regarding Hyprland
    ];
}