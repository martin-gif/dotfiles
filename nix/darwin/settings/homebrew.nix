# Not using anymore
{ pkgs, ... }: {
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };

    brews = [
     # "cowsay"
    ];
    casks = [
     # "discord"
     # "visual-studio-code"
     "anki"
     "keepassxc"
     "linearmouse"
     "pyCharm"
     "webstorm"
     "sioyek"
     "wezterm"
    ];
  };
}