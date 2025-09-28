{ config, pkgs, ... }:

{
    progarms.zsh = {
        enable = true;
      ShellAliases = {
          ls = "lsd";
          x = "clear";
          lt = "ls --tree";
          cd = "z";
        };
        progarms.OhMyZsh = {
            enable = true;
            plugins = [ "git" "zoxide" "starship" ];
            theme = "mh";
          };
      };
  }
