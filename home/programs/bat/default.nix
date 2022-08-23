{ config, pkgs, ... }:

{
  programs.bat = {
    enable = true;
    config = import ./settings.nix;
  };
}
