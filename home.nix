{ config, pkgs, lib, ... }:

with lib; {
  imports = [
    ./home/programs
    ./home/services
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "22.05";
  };

  programs.home-manager.enable = true;
}
