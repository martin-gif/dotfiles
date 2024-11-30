{pkgs, ...} :
{
    system = {
        defaults = {
            finder = {
                AppleShowAllFiles = true;
                FXPreferredViewStyle = "icnv";
                ShowPathbar = true;
            };
        };
    };

    services.nix-daemon.enable = true;

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 5;
}