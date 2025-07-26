{ config, pkgs, ... }:

{
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    pinentryPackage = "tty";
  };
}
