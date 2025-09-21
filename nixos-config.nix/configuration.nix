{ config, pkgs, lib, ... }:

{
# imports 
imports =[
./modules.nix/hypr-keymaps.nix.nix
./modules.nix/user.nix
./modules.nix/home.nix
./modules.nix/hyprland.nix
./modules.nix/zsh.nix
./modules.nix/fonts.nix
./modules.nix/system.nix
];
}
