{ config, pkgs, ... }:

{
 
boot.loader.systemd-boot.enable = true;
boot.loader.efi.canTouchEfiVariables = true;
networking.hostname = "nix-btw";
networking.networkmanager.enable = true;
time.timeZone = "Asia/Kolkata";
service.displayManager.ly.enable = true;

service.pipewire.enable = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true; 
    pulse.enable = true;
    thisjack.enable = true; 
  };

security.rtkit.enableble = true;
nixpkgs.config.allowUnfree.enable = true;
programs.firefox.enable = true;
systems.stateVersion = "25.05";

  }
