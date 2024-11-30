{pkgs, ...}: {
  programs.vscode = {
  enable = true;
  package = pkgs.vscodium;
  extensions = with pkgs.vscode-extensions; [
    dracula-theme.theme-dracula
    yzhang.markdown-all-in-one
    jnoortheen.nix-ide
  ];
};
}
