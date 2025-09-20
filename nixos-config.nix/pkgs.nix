{ config, pkgs, ... }:

{
    environment.systempackages = with pkgs; [
    hyprland
    hyprlock
    hyprcursor
    waybar
    ghostty # extra terminal for experiment 
    nwg-look
    nwg-displays
    nitch  # fetch for nixos
      
  


    ];
  }
