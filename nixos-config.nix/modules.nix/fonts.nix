{ pkgs, ... }:

{
    fonts.packages = with pkgs [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fantasque-sans-mono
    nerd-fonts.victor-mono
    ];
  }
