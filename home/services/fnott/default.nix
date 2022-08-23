{ config, pkgs, ... }:

{
  services.fnott = {
    enable = true;
    settings = import ./settings.nix;
  };
}
