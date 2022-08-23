{ config, pkgs, ... }:

{
  programs.lsd = {
    enable = true;
    enableAliases = true;
    settings = import ./settings.nix;
  };
}
