{ config, pkgs, ... }:

{
    home.file = {
        ".config/fish/functions/nixgens.fish".text = ''
            function nixgens
            sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
            end
        '';

        ".config/fish/functions/nixos_setup.fish".text = ''
            function nixos_setup
            # Define paths for NixOS configuration
            set src_file /home/cookie/Documents/code/git/nixos-configs/configuration.nix
            set src_dir /home/cookie/Documents/code/git/nixos-configs/modules
            set dest_dir /etc/nixos
            set backup_dir /etc/nixos-backups/(date +"%Y%m%d%H%M%S")

            # Define paths for Home Manager configuration
            set home_src_file /home/cookie/Documents/code/git/nixos-configs/home-configs/home.nix
            set flake_src_file /home/cookie/Documents/code/git/nixos-configs/home-configs/flake.nix
            set home_src_dir /home/cookie/Documents/code/git/nixos-configs/home-configs/modules
            set home_dest_dir /home/cookie/.config/home-manager
            set home_backup_dir /home/cookie/.config/home-manager-backups/(date +"%Y%m%d%H%M%S")

            # Create a backup directory for NixOS configuration
            sudo mkdir -p $backup_dir

            # Back up all files and directories in NixOS config except the exclusions
            for item in $dest_dir/*
                if test (basename $item) != "hardware-configuration.nix" -a (basename $item) != "result"
                    sudo mv $item $backup_dir/
                end
            end

            # Copy the NixOS configuration file and modules directory
            sudo cp $src_file $dest_dir/
            sudo cp -r $src_dir $dest_dir/

            # Create a backup directory for Home Manager configuration
            mkdir -p $home_backup_dir

            # Back up the existing Home Manager configuration
            if test -d $home_dest_dir
                mv $home_dest_dir/* $home_backup_dir/
            end

            # Create a new Home Manager directory
            mkdir -p $home_dest_dir

            # Copy the Home Manager configuration files and modules directory
            cp $home_src_file $home_dest_dir/
            cp $flake_src_file $home_dest_dir/
            cp -r $home_src_dir $home_dest_dir/modules

            echo "NixOS and Home Manager configurations updated! Backups saved to $backup_dir and $home_backup_dir."
            end
        '';
    };
}