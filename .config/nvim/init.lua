require "options"
require "plugins"
require "keymap"
require "colorscheme"


vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})
vim.cmd("autocmd TermOpen * :startinsert")
vim.cmd("autocmd TermOpen * setlocal norelativenumber")
vim.cmd("autocmd TermOpen * setlocal nonumber")

