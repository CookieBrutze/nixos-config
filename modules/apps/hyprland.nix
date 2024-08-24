{ config, pkgs, ... }:

{
    programs.hyprland.enable = true;

    environment.systemPackages = with pkgs; [
        # Packages regarding Hyprland
    ];
}