{ config, pkgs, ... }:

{
# imports 
imports =[
<home-manager/nixos>
./module.nix
./user.nix
./home.nix
./hyprland.nix
];

# all the programs and one line commands !
  programs.zsh = {
      enble = true;
    SellAliases = { 
     ls = "lsd"
     x = "clear"
     v = "nxim"
     lt = "ls --tree"
      };
 
  OhMyZsh = {
       enable = true;
        };
      plugins = [ "git" "zsh-history-substring-search" "starship" ];
      theme = "mh";
    };
  zoxide = {
      enble = true;
    };
  };

  service.displaymanager.ly.enable = true;
  #experimental flakes 
   nix.settings.experimental-features = ["nix-command" "flakes"];
  # all the pkgs and dependences !

  fonts.packages = with pkgs; [
     nerd-fonts.jetbrains-mono
     nerd-fonts.fantasque-sans-mono
     nerd-fonts.victor-mono
  ];

# boot loaders 
boot.loader.systemd-boot.enble = true;
boot.loader.efi.canTouchEfiVariables = true;

# networking and connectivity
networking.hostname = "nix-btw";
networking.networkmanager.enble = true;

#timeZone 
time.timeZone = "Asia/Kolkata";
service.printing.enble = false;

#audio and sound adjestments 
service.pulseaudio.enble = false;
service.pipewire.enble = {
    enble = true;
    alsa.enble = true;
    alsa.support32Bit = true; 
    pulse.enble = true;
    thisjack.enble = true; 
  }
security.rtkit.enble = true;
#some extra settings for pkgs and users 
nixpkgs.config.allowUnfree.enble = true;

# firefox enble
programs.firefox.enble = true;

# system version 
systems.stateVersion = "25.05";

  }
