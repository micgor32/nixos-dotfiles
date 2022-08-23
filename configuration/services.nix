{ pkgs, ... }:

{
  services = {
    avahi = {
      enable = true;
      nssmdns = true;
    };
    dbus.enable= true;
    fwupd.enable = true;
    greetd = {
      enable = true;
      vt = 7;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --asterisks --time --cmd sway";
	  user = "greeter";
	};
      };
    };
    printing.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };
    tailscale.enable = true;
  };
}
