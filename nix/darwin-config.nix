 {pkgs, ...}:
 {
  services.nix-daemon.enable = true;
 
  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  users.users.Marvin = {
    home = "/Users/marvinraschke/";
    name = "Marvin"
  };
 
  nix.extraOptions = ''
    auto-optimise-store = true
  '';

  environment.systemPackages =
    [ pkgs.vim
    ];

  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;
      
  # The platform the configuration will be used on.
  # If you're on an older system, replace with "x86_64-darwin"
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  homebrew = {
    enable = true;
 
    casks = [
      "discord"
      "visual-studio-code"
    ];
  };
}
