{ config, pkgs, ... }:

{
  programs.lazygit = {
    enable = true;
    settings = import ./settings.nix;
  };
}
