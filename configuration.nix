{ config, pkgs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        ./modules/base.nix
        ./modules/networking.nix
        ./modules/user.nix
    ];
}