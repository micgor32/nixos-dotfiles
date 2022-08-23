{ config, pkgs, ... }:

{
  imports = [
    ./configuration
  ];
  
  nix = {
    allowedUsers = [ "@wheel" ];
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  virtualisation = {
    docker = {
      enable = true;
    };
  };

  environment.defaultPackages = pkgs.lib.mkForce [];

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";
  
  console = {
    font = "Fira Code Nerd Font Complete Mono";
    keyMap = pkgs.lib.mkForce "de";
    useXkbConfig = true;
  };

  users = {
    mutableUsers = false;
    users.user = {
      hashedPassword = "$6$a1yirXLkmXTYTOiw$MXLr1vIkeeeDKYGQkyaD/F7TIrzEY/XJ4lfGF8iRgjTDB4Socddwa3TexR5oIUmCe6iuHDsIH7GrJjNqTGD7o/";
      isNormalUser = true;
      shell = pkgs.zsh;
      extraGroups = [ "wheel" "networkmanager" "video" "audio" "input" "docker" ];
    };
  };

  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  system = {
    copySystemConfiguration = false;
    stateVersion = "22.05";
  };
  
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    gtkUsePortal = true;
  };
}
