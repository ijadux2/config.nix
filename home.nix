{ config, pkgs, home-manager, ... }:

{
  home-manager.users.root = {
      home.homeDirectory = "/home/root";
      home.NixpkgsReleaseCheck.enble = true;
      home.StateVersion = "25.05";
      nixpkgs.config.allowUnfree = true;
  };
      home.packages = with pkgs; [
      cmatrix
      kitty
      ];

      home.sessionVariable = {
          EDITOR = "nvim";
        };
        
        programs.home-manager.enble = true;
    
  }
