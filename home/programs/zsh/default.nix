{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    shellAliases = {
      cat = "bat";
      lg = "lazygit";
      ldo = "lazydocker";
	  gits = "git status";
    };
  };
}
