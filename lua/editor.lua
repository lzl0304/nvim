local g = vim.g
local opt = vim.opt

g.encoding = "utf-8"
g.mapleader = " "

opt.background = "dark"
opt.colorcolumn = "100"
opt.completeopt = { "menu", "menuone", "noselect" }
opt.filetype = "plugin"
opt.mouse = "a"
opt.mousescroll = "ver:2,hor:4"
opt.showmatch = true
opt.syntax = "on"

opt.pumheight = 10
opt.signcolumn = "yes"
opt.spell = true
opt.spelllang = { "en_us" }

-- file encoding
opt.fileencoding = "utf-8"

-- number
opt.number = true
opt.numberwidth = 2
opt.relativenumber = false

-- backup file
opt.autoread = true
opt.backup = false
opt.backupcopy = "yes"
opt.swapfile = false
opt.writebackup = false

-- indent
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.softtabstop = 4
opt.tabstop = 4

-- jkhl scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- split
opt.splitbelow = true
opt.splitright = true

-- list chars
opt.list = false
opt.listchars:append {
    eol = "↵",
    space = "·",
    tab = "▸ ",
    trail = "·",
}

-- clipboard
opt.clipboard = "unnamedplus"

-- go to start of line after 'gg'
opt.startofline = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- cursor
opt.cursorline = true
opt.cursorlineopt = "screenline"
opt.termguicolors = true
