{pkgs, ...} :
{
  imports = [
    ./config/zsh.nix
    ./config/zed.nix
  ];


  # let home-manager install and manage itself.
  programs.home-manager.enable = true;

  # home.packages = with pkgs; [
  # ];
  home = {
    username = "marvin";
    homeDirectory = "/Users/marvin/";
    packages = with pkgs; [
      fzf
      python3
      libidn2
      gettext
      nodejs
      wget
      nil
      ripgrep
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs = {
    neovim = {
      enable = true;
    };

    starship = {
      enable = true;
      enableZshIntegration = true;
    };


    zoxide = {
      enable = true;
      options = [
        "--no-cmd"
      ];
    };

    bat = {
      enable = true;
    };

    git = {
      enable = true;
      ignores = [".DS_Store"];
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    lazygit = {
      enable = true;
    };
  };
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "23.11";
}
