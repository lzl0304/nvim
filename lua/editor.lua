-- encoding
vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'

-- go to start of line after 'gg'
vim.o.startofline = true

-- line number
vim.wo.number = true
vim.wo.relativenumber = false

-- column line
vim.wo.colorcolumn = '80'

-- indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- highlight row
vim.wo.cursorline = true

-- signcolumn
vim.wo.signcolumn = 'yes'

-- mouse
vim.o.mouse = 'a'

-- split
vim.o.splitbelow = true
vim.o.splitright = true

-- list
vim.o.list = false
vim.opt.listchars:append {
    tab = "▸ ",
    eol = "↵",
    space = "·",
}

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- don't create backup file (swap file)
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.backupcopy = "yes"
vim.opt.swapfile = false

-- file type
vim.opt.filetype = "plugin"

-- 补全最多显示10行
vim.o.pumheight = 10

-- 自动补全不自动选中
vim.opt.completeopt = "menu,menuone,noselect"

-- 拼写检查
vim.opt.spelllang = "en_us"
vim.opt.spell = true
