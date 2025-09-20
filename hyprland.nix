{ config, pkgs, ... }:

{
    programs.hyprland.enable = true;
    xdg.portal.enable = true;
    
    gtk = {
        enable = true;
        theme = {
            name = "catppuccin-mocha";
            package = "pkgs.catppuccin-gtk";

          };
      };
      programs.kitty = {
          enable = true;
          kittyConfigs  = ''
          confirm-os-remove;
          font-family = "JetBrains Mono Nerd";
          font-size = "18";
          background-opacity = "0.95";
          ''
        };
     

  }
