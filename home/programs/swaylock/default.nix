{ config, pkgs, ... }:

{
  programs.swaylock = {
    settings = import ./settings.nix;
  };
}
