{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      golang.go
      svelte.svelte-vscode
      arcticicestudio.nord-visual-studio-code
      eamodio.gitlens
      llvm-vs-code-extensions.vscode-clangd
      github.copilot
    ];
    userSettings = import ./settings.nix;
  };
}
