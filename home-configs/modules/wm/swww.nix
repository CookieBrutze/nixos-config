{ config, pkgs, ... }:
{
    home.file = {
        ".config/hypr/scripts/swww/wallpaper1.sh".text = ''
        swww img /home/cookie/.config/hypr/swww/wallpaper1.jpg --transition-type center --transition-step 50 --transition-fps 60
        '';

        ".config/hypr/scripts/swww/wallpaper2.sh".text = ''
        swww img /home/cookie/.config/hypr/swww/wallpaper2.jpeg --transition-type center --transition-step 50 --transition-fps 60
        '';
    };
}