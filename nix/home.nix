{ pkgs, ... }:
{
  
  imports = [
    ./zsh.nix
  ];

  # let home-manager install and manage itself.
  programs.home-manager.enable = true;
 
  # home.packages = with pkgs; [
  # ];
  home = {
    username = "marvin";
    homeDirectory = "/Users/marvin/";
    sessionVariables = {
      EDITOR = "nvim";
    };
  };
 
  programs = {
    zsh = {
      enable = true;
  
      shellAliases = {
        ls = "ls --color";
        switch = "darwin-rebuild switch --flake ~/.config/nix";
      };
    };

    nvim = {
      enable = true;
    };

    starship = {
      enable = true;
      enableZshIntegration = true;
    };

    bat = {
      enable = true;
      config.theme = "TwoDark";
    };

    git = {
      enable = true;
      ignores = [".DS_Store"];
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
  };
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "23.11";
}
