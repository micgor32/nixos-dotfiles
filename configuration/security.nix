{ ... }:

{
  security = {
    sudo.enable = false;
    doas.enable = true;
    tpm2.enable = true;
    rtkit.enable = true;
    pam.u2f.enable = true;
  };
}
