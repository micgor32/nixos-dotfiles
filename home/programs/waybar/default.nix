{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    settings = import ./settings.nix;
    style = import ./style.css;
    systemd = {
      enable = true;
      target = "sway-session.target";
    };
  };
}
