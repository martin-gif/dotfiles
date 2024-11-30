{ pkgs, ... }: {
  # .zshenv
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    history = {
      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      save = 1000000;
      size = 1000000;
    };

    shellAliases = {
      nixswitch = "darwin-rebuild switch --flake ~/.config/snowflake/.#";
      nixup = "pushd ~/.config/snowflake; nix flake update; nixswitch; popd";
      ls = "ls --color=auto";
      ll = "ls -lahrts";
      l = "ls -l";
      lg = "lazygit";
      vi = "nvim";
      python = "python3";
      k = "kubectl";
      tmux = "TERM=screen-256color-bce tmux";
      ocaml = "rlwrap ocaml";
      felix = "ssh felix@209.133.204.26 -p 13031";
      docker-clean = "docker rmi $(docker images -f 'dangling=true' -q)";
    };

    initExtra = ''
      # SPACESHIP_SCALA_SHOW=false
      export EDITOR=vi
      export TERM=xterm-256color
      export LANG=de_US.UTF-8ATH"
      # Ok, if Nix doesn't work, try this:
      # export PATH="/run/current-system/sw/bin:$PATH"

      # And enable this
      # if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
      #   . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
      # fi
      '';

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