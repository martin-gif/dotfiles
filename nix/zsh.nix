{ pkgs, ... }: {
  # .zshenv
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = false;
    syntaxHighlighting.enable = true;

    history = {
      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      save = 1000000;
      size = 1000000;
    };

    shellAliases = {
      nixswitch = "darwin-rebuild switch --flake ~/.config/nix/.#marvin";
      nixup = "pushd ~/.config/snowflake; nix flake update; nixswitch; popd";
      ls = "ls --color=auto";
      ll = "ls -lahrts";
      l = "ls -l";
      lg = "lazygit";
      python = "python3";
      tmux = "TERM=screen-256color-bce tmux";
      # docker-clean = "docker rmi $(docker images -f 'dangling=true' -q)";
    };

    initExtra = ''
      # SPACESHIP_SCALA_SHOW=false
      export EDITOR=nvim
      export TERM=xterm-256color
      export LANG=de_US.UTF-8ATH"
      # Ok, if Nix doesn't work, try this:
      # export PATH="/run/current-system/sw/bin:$PATH"

      # And enable this
      # if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
      #   . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
      # fi

      
      '';
    initExtraBeforeCompInit = ''
    eval "$(starship init zsh)"
    autoload -Uz compinit && compinit
    eval "$(zoxide init --cmd cd zsh)"
    '';

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];

    oh-my-zsh = {
      enable = true;
      # theme = "spaceship";
      plugins = [ 
        # "aws"
        "git" 
        "docker" 
        # "kubectl" 
        # "asdf" 
        # "rbenv" 
        # "terraform" 
        "history" 
        "history-substring-search" 
      ];
    };
  };
}