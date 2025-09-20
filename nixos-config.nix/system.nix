{ config, pkgs, ... }:

{
    # boot loaders 
boot.loader.systemd-boot.enable = true;
boot.loader.efi.canTouchEfiVariables = true;
# networking and connectivity
networking.hostname = "nix-btw";
networking.networkmanager.enable = true;
#timeZone 
time.timeZone = "Asia/Kolkata";
service.printing.enble = false;
service.displayManager.ly.enable = true;

#audio and sound adjestments 
service.pulseaudio.enable = false;
service.pipewire.enable = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true; 
    pulse.enable = true;
    thisjack.enable = true; 
  }
security.rtkit.enableble = true;
#some extra settings for pkgs and users 
nixpkgs.config.allowUnfree.enable = true;
# firefox enble
programs.firefox.enable = true;
# system version 
systems.stateVersion = "25.05";
  }
