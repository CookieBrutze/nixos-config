{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/hyprland.conf".text = ''
        # ██╗  ██╗██╗   ██╗██████╗ ██████╗ ██╗      █████╗ ███╗   ██╗██████╗ 
        # ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗
        # ███████║ ╚████╔╝ ██████╔╝██████╔╝██║     ███████║██╔██╗ ██║██║  ██║
        # ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗██║     ██╔══██║██║╚██╗██║██║  ██║
        # ██║  ██║   ██║   ██║     ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝
        # ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 


        # Modules
        source=~/.config/hypr/modules/monitor.conf
        source=~/.config/hypr/modules/input.conf
        '';



        ".config/hypr/modules/monitor.conf".text = ''
        # ███╗   ███╗ ██████╗ ███╗   ██╗██╗████████╗ ██████╗ ██████╗ 
        # ████╗ ████║██╔═══██╗████╗  ██║██║╚══██╔══╝██╔═══██╗██╔══██╗
        # ██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║   ██║   ██║██████╔╝
        # ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║   ██║   ██║██╔══██╗
        # ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║   ╚██████╔╝██║  ██║
        # ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝


        monitor=,preferred,auto,auto
        '';



        ".config/hypr/modules/input.conf".text = ''
        # ██╗███╗   ██╗██████╗ ██╗   ██╗████████╗
        # ██║████╗  ██║██╔══██╗██║   ██║╚══██╔══╝
        # ██║██╔██╗ ██║██████╔╝██║   ██║   ██║   
        # ██║██║╚██╗██║██╔═══╝ ██║   ██║   ██║   
        # ██║██║ ╚████║██║     ╚██████╔╝   ██║   
        # ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝    ╚═╝  


        input {
            kb_layout = us
            kb_variant =
            kb_model =
            kb_options =
            kb_rules =

            follow_mouse = 1

            sensitivity = 0

            touchpad {
                natural_scroll = false
            }
        }
        '';
    };
}