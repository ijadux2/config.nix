{ config, pkgs, lib, ... }:

{
   programs.neovim = {
      enble = true;
      colourscheme = "catppuccin-mocha";
      lang = [ "nix" "html" "css" "lua" ];

    };
  }
