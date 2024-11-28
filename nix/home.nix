{ pkgs, ... }:
{
  home.stateVersion = "23.11";

  # let home-manager install and manage itself.
  programs.home-manager.enable = true;
 
  # home.packages = with pkgs; [
  # ];
 
  programs.zsh = {
    enable = true;
 
    shellAliases = {
      ls = "ls --color";
      switch = "darwin-rebuild switch --flake ~/.config/nix";
    };
  };
}
 
