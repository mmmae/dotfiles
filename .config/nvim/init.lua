vim.cmd([[
set autoindent
set encoding=utf-8
set noexpandtab
set shiftwidth=8
set tabstop=8
set softtabstop=0
set textwidth=80
set formatoptions+=t
set notimeout
set number
]])

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

require("lazy").setup({
  "beauwilliams/statusline.lua"
})
