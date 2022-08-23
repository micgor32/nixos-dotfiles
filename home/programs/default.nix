{ config, lib, pkgs, ... }:

{
  # Packages that need extra configuration
  imports = [
    ./bat
    ./chromium
    ./foot
    ./git
    ./go
    ./lazygit
    ./lsd
    ./neovim
    ./starship
    ./vscodium
    ./waybar
    ./zsh
  ];

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    alsa-utils
    #binutils # conflict with clang
    btop
    unstable.cilium-cli
    clang
    distrobox
    gnumake
    kubectl
    kubernetes-helm
    lazydocker
    unstable.minio-client
    nmap
    tailscale
    unstable.talosctl
    tio
    zig
  ];
}
