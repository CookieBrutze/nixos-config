{ config, pkgs, ... }:

{
  # Enable the X server
  services.xserver.enable = true;

  # Enable GDM (GNOME Display Manager)
  services.xserver.displayManager.gdm.enable = true;

  # Enable the GNOME Desktop Environment
  services.xserver.desktopManager.gnome.enable = true;

  # Optionally, include some common GNOME applications
  environment.systemPackages = with pkgs; [
    gnome.gnome-shell
    gnome.gnome-control-center
    gnome.gnome-terminal
    gnome.gnome-tweaks
  ];

  # Optionally, enable Flatpak support
  services.flatpak.enable = true;

  # Optionally, enable network management for GNOME
  networking.networkmanager.enable = true;
}