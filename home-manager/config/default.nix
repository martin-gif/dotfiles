{ pkgs, config, ... }:

{
  imports = [
    # Enable &/ Configure Programs
    ./wezterm.nix
    ./vsCodium.nix
  ];
}
