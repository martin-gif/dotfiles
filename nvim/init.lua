-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").typst_lsp.setup({
  settings = {
    exportPDF = "onSave",
  },
})
