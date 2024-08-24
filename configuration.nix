{ config, pkgs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        ./modules/base.nix
        ./modules/networking.nix
        ./modules/user.nix
        ./modules/apps/dev.nix
        ./modules/apps/firefox.nix
        ./modules/apps/hyprland.nix
        ./modules/apps/shell.nix
        ./modules/apps/steam.nix
    ];
}