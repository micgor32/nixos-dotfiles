{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableBashIntegration = false;
    enableZshIntegration = true;
    enableFishIntegration = false;
    enableIonIntegration = false;
    settings = import ./settings.nix;
  };
}
