{ config, pkgs, ... }:

{
# imports 
imports =[
./hypr-keymaps.nix.nix
./user.nix
./home.nix
./hyprland.nix
./zsh.nix
./fonts.nix
./system.nix
];
   nix.settings.experimental-features = ["nix-command" "flakes"];
}
