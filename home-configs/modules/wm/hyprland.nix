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


        ###############
        ### Modules ###
        ###############

        source=~/.config/hypr/modules/monitor.conf
        source=~/.config/hypr/modules/input.conf
        source=~/.config/hypr/modules/windows.conf
        source=~/.config/hypr/modules/keybindings.conf


        ################
        ### Start up ###
        ################

        # swww (wallpaper)
        exec-once = swww-daemon


        # chmod
        exec-once = chmod +x /home/cookie/.config/hypr/scripts/swww/wallpaper1.sh
        exec-once = chmod +x /home/cookie/.config/hypr/scripts/swww/wallpaper2.sh
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


        #######################
        ### Keyboard inputs ###
        #######################

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


        ##############
        ### Cursor ###
        ##############

        env = XCURSOR_SIZE,24
        env = HYPRCURSOR_SIZE,24
        '';



        ".config/hypr/modules/windows.conf".text = ''
        # ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗
        # ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝
        # ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗
        # ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║
        # ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║
        #  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝


        ###############
        ### Borders ###
        ###############
        border_size = 5

        decoration {
        active_border_color = 0xfe8300
        inactive_border_color = 0x810b59
        }

        '';



        ".config/hypr/modules/keybindings.conf".text = ''
        # ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
        # ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
        # █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
        # ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
        # ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
        # ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


        ###############
        ### mainmod ###
        ###############

        $mainMod = Super


        ############
        ### apps ###
        ############

        $term = kitty
        $editor = code
        $file = dolphin
        $browser = firefox


        #####################
        ### app shortcuts ###
        #####################

        bind = $mainMod, T, exec, $term # launch terminal emulator
        bind = $mainMod, E, exec, $file # launch file manager
        bind = $mainMod, C, exec, $editor # launch text editor
        bind = $mainMod, F, exec, $browser # launch web browser


        ######################
        ### window/session ###
        ######################

        bind = $mainMod, Q, killactive# close focused window
        bind = Alt, F4, killactive# close focused window
        bind = $mainMod, Delete, exit, # kill hyprland session
        bind = $mainMod, W, togglefloating, # toggle the window between focus and float
        bind = $mainMod, G, togglegroup, # toggle the window between focus and group
        bind = Alt, Return, fullscreen, # toggle the window between focus and fullscreen


        ################################
        ### move/change window focus ###
        ################################

        bind = $mainMod, Left, movefocus, l
        bind = $mainMod, Right, movefocus, r
        bind = $mainMod, Up, movefocus, u
        bind = $mainMod, Down, movefocus, d
        bind = Alt, Tab, movefocus, d


        ############################################
        ### move focused window/switch workspace ###
        ############################################

        #move to workspace
        bind = $mainMod+Shift, 1, movetoworkspace, 1
        bind = $mainMod+Shift, 2, movetoworkspace, 2
        bind = $mainMod+Shift, 2, movetoworkspace, 3
        bind = $mainMod+Shift, 2, movetoworkspace, 4
        bind = $mainMod+Shift, 2, movetoworkspace, 5
        bind = $mainMod+Shift, 2, movetoworkspace, 6
        bind = $mainMod+Shift, 2, movetoworkspace, 7
        bind = $mainMod+Shift, 8, movetoworkspace, 8
        bind = $mainMod+Shift, 9, movetoworkspace, 9
        bind = $mainMod+Shift, 0, movetoworkspace, 10

        bind = $mainMod+Ctrl+Alt, Right, movetoworkspace, r+1
        bind = $mainMod+Ctrl+Alt, Left, movetoworkspace, r-1

        bind = $mainMod+Alt, 1, movetoworkspacesilent, 1
        bind = $mainMod+Alt, 2, movetoworkspacesilent, 2
        bind = $mainMod+Alt, 3, movetoworkspacesilent, 3
        bind = $mainMod+Alt, 4, movetoworkspacesilent, 4
        bind = $mainMod+Alt, 5, movetoworkspacesilent, 5
        bind = $mainMod+Alt, 6, movetoworkspacesilent, 6
        bind = $mainMod+Alt, 7, movetoworkspacesilent, 7
        bind = $mainMod+Alt, 8, movetoworkspacesilent, 8
        bind = $mainMod+Alt, 9, movetoworkspacesilent, 9
        bind = $mainMod+Alt, 0, movetoworkspacesilent, 10

        # Move/Resize focused window
        bindm = $mainMod, mouse:272, movewindow
        bindm = $mainMod, mouse:273, resizewindow
        bindm = $mainMod, Z, movewindow
        bindm = $mainMod, X, resizewindow

        # switch workspace
        bind = $mainMod, 1, workspace, 1
        bind = $mainMod, 2, workspace, 2
        bind = $mainMod, 3, workspace, 3
        bind = $mainMod, 4, workspace, 4
        bind = $mainMod, 5, workspace, 5
        bind = $mainMod, 6, workspace, 6
        bind = $mainMod, 7, workspace, 7
        bind = $mainMod, 8, workspace, 8
        bind = $mainMod, 9, workspace, 9
        bind = $mainMod, 0, workspace, 10

        bind = $mainMod+Ctrl, Right, workspace, r+1
        bind = $mainMod+Ctrl, Left, workspace, r-1

        bind = $mainMod, mouse_down, workspace, e+1
        bind = $mainMod, mouse_up, workspace, e-1

        bind = $mainMod+Ctrl, Down, workspace, empty

        # Toggle focused window split
        bind = $mainMod, J, togglesplit
        '';
    };
}