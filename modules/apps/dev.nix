{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # Packages regarding Deevelobment
        vim
        neovim
        git
        gh
        gcc
        python3
        rustup
        kitty
        godot_4
        vscode
        libresprite
        logmein-hamachi
        electron
        # make
    ];
}