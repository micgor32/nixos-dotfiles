{ config, lib, pkgs, ... }:

{
  # Services that need extra configuration
  imports = [
    ./fnott
    ./gpg-agent
    ./sway
    ./swayidle
  ];
}
