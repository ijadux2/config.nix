{ config, pkgs, ... }:

{
    progarms.zsh = {
        enable = true;
      ShellAliases = {
          ls = "lsd";
          x = "clear";
          lt = "ls --tree";
        };
        progarms.OhMyZsh = {
            enable = true;
            plugins = [ "git"];
            theme = "mh";
          };
        progarms.zoxide.enable = true;
        progarms.starship.enable = true;
      };
  }
