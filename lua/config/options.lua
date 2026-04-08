-- silence all vim.notify notifications
vim.notify = function() end

vim.opt.termguicolors = true
vim.o.background = "dark"

vim.opt.showmode = false
vim.opt.backup = false -- do not create a backup file
vim.opt.writebackup = false -- do not write to a backup file
vim.opt.swapfile = false -- do not create a swapfile
vim.opt.redrawtime = 10000 -- increase neovim redraw tolerance
vim.opt.maxmempattern = 20000 -- increase max memory

-- line numbers
vim.opt.number = true -- show absolute number on current line
vim.opt.relativenumber = true -- show relative numbers on all other lines
