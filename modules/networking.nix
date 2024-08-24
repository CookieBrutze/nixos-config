{ config, pkgs, ... }:

{
    # Hostname
    networking.hostName = "nixos";


    # Enable networking
    networking.networkmanager.enable = true;
}