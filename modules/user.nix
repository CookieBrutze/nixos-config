{ config, pkgs, ... }:

{
    # Define a user account.
    users.users.cookie = {
        isNormalUser = true;
        description = "cookie";
        extraGroups = [ "networkmanager" "wheel" ];
        shell = pkgs.fish;
        packages = with pkgs; [
        # User specific packages.
        discord
        modrinth-app
        ];
    };
}