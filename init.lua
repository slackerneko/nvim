-- Essentials
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.termguicolors = true

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "slackerneko/plugins" },
})

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.hlsearch = false

opt.autoindent = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.swapfile = false
opt.undofile = true
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.breakindent = true
