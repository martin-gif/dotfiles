return {
  -- latEx
  {
    "lervag/vimtex",
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "sioyek"
      vim.g.latex_view_general_viewer = "sioyek"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_compiler_progname = "latexrun"
      vim.g.vimtex_syntax_enabled = 1
      vim.g.tex_conceal = "abdmg"
    end,
  },

  {
    "SirVer/ultisnips",
    init = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
      vim.g.UltiSnipsSnippetDirectories = { "mySnips" }
    end,
  },

  {
    "frabjous/knap",
    init = function()
      local gknapsettings = {
        texoutputext = "pdf",
        textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
        textopdfviewerlaunch = "mupdf %outputfile%",
        textopdfviewerrefresh = "kill -HUP %pid%",
      }
      vim.g.kanp_setting = gknapsettings
    end,
    enable = false,
  },
}
