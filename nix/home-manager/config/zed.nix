{pkgs, lib, ... }:

{
    programs.zed-editor = {
        enable = true;
        extensions = ["nix" "dockercompose" "dockerfile" "xcodethemes" "typst"];




        userSettings = {
            lsp = {
                nix = {
                    binary = {
                        path_lookup = true;
                    };
                };
                ruff = {
                    initialization_options = {
                      settings = {
                        lineLength = 80;
                      };
                    };
                };
                tinymist = {
                  initialization_options = {
                    exportPdf = "onSave";
                    outputPath = "$root/$name";
                  };
                };
            };

            languages = {
              "Python" = {
                language_servers = ["ruff"];
                format_on_save = "on";
                formatter = [{
                  language_server = {
                    name = "ruff";
                  };
                }];
              };
            };
        };
    };
}
