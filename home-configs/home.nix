{ config, pkgs, ... }:

{
    imports = [
        ./modules/kitty.nix
        ./modules/fish.nix
        ./modules/wm/hyprland.nix
    ];


    home.username = "cookie";
    home.homeDirectory = "/home/cookie";


    home.stateVersion = "23.11"; # Please read the comment before changing.


    home.packages = [];


    home.sessionVariables = {
        EDITOR = "neovim";
    };


    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}