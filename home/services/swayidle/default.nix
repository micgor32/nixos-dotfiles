{ config, pkgs, ... }:

{
  services.swayidle = {
    enable = true;
    events = [
      { event = "before-sleep"; command = "swaylock -f -c 000000"; }
    ];
    timeouts = [
      { timeout = 900; command = "swaylock -f -c 000000"; }
      { timeout = 1200; command = "swaymsg output * dpms off"; resumeCommand = "swaymsg output * dpms on"; }
    ];
  };
}
