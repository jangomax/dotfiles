vim.g.mapleader = ' ' -- Space leader 😛

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.hidden = true
vim.opt.number = true
vim.opt.cursorline = true
--vim.opt.signcolumn = 'yes:1'
vim.opt.signcolumn = 'number'

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showmatch = true
vim.opt.incsearch = true

vim.opt.cmdheight = 2
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.pumheight = 10
vim.opt.conceallevel = 0
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.background = 'dark'
vim.opt.syntax = 'enable'
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.formatoptions:append 'cro'
vim.opt.mouse = 'a'
vim.opt.autochdir = true
vim.opt.wildoptions = 'pum'
vim.opt.clipboard:append { 'unnamedplus' } -- macOs Clipboard
--vim.opt.clipboard:append { 'unnamed' } -- windows Clipboard
