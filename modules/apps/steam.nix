{ config, pkgs, ... }:

{
    # Installation and configs for steam.
    programs.steam.enable = true;
    programs.steam.gamescopeSession.enable = true;
    programs.gamemode.enable = true;

    environment.systemPackages = with pkgs; [
        # Packages regarding steam.
        protonup
        mangohud
    ];
}