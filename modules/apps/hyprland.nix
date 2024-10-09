{ config, pkgs, ... }:

{
    programs.hyprland.enable = true;

    environment.systemPackages = with pkgs; [
        pkgs.swww
    ];
}