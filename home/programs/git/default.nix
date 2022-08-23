{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Marvin Drees";
    userEmail = "marvin.drees@9elements.com";
    signing = {
      signByDefault = true;
      key = "908EC248959A7E61";
    };
    extraConfig = import ./settings.nix;
  };
}
