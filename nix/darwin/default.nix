 {pkgs, ...}:
 {
  imports = [
    ./settings/homebrew.nix
    ./settings/system.nix
  ];

  
 
  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  users.users.marvin = {
    home = "/Users/marvin/";
    name = "marvin";
  };

  programs.zsh.enable = true;
 
  nix.extraOptions = ''
    auto-optimise-store = true
  '';

  environment.systemPackages =
    [   
        
        pkgs.pipenv
    ];

  # Set Git commit hash for darwin-version.
  # system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

  
      
  # The platform the configuration will be used on.
  # If you're on an older system, replace with "x86_64-darwin"
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;
}
