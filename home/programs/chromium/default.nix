{ config, pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    commandLineArgs = [
      "--ozone-platform=wayland"
    ];
    extensions = [
      { id = "aeblfdkhhhdcdjpifhhbdiojplfjncoa"; } # 1password
      { id = "nngceckbapebfimnlniiiahkandclblb"; } # Bitwarden
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # uBlock Origin
      { id = "dhdgffkkebhmkfjojejmpbldmpobfkfo"; } # Tampermonkey
      {
        id = "ocaahdebbfolfmndjeplogmgcagdmblk";
	updateUrl = "https://github.com/NeverDecaf/chromium-web-store/blob/master/updates.xml";
      } # Chrome Web Store
    ];
  };
}
