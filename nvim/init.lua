local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup("plugins", opts)

vim.cmd.colorscheme "catppuccin"

-- line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- auto indent
vim.opt.smartindent = true
vim.opt.shiftwidth = 4

-- smart indent
vim.opt.breakindent = true

-- disable text wrap
vim.opt.wrap = false

vim.opt.signcolumn = "yes"

-- system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- enables highlighting of cursor line
vim.opt.cursorline = true

-- restrict scrolloff spacing
vim.opt.scrolloff = 10

vim.opt.colorcolumn = "80"

-- KEYMAP
vim.keymap.set('n', 't', '<cmd>NvimTreeToggle<cr>')
