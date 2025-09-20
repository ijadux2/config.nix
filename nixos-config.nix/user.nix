{ config, pkgs, ... }:

{
   # this would be the main config for user 
   users.users.root = {
      inNormalUsers = true;
      description = "root";
      shell = pkg.zsh;
      extragroups = ["networkmanager" "wheel"];
    };
  }
