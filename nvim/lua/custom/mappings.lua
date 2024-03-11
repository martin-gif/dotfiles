---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Compile and view the PDF
    ["<leader>cc"] = {":VimtexCompile<CR>"},
    ["<leader>cv"] = {":VimtexView<CR>"},
    ["<leader>cq"] = {":VimtexStop<CR>"},
    ["<leader>ss"] = {":set spell spelllang=de_de<CR>"},
    ["<leader>sq"] = {":set nospell<CR>"},
    ["zz"] = {"z="},

    ["<leader>fb"] = {":Telescope bibtex<CR>","find Bibtex Entry"}
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
