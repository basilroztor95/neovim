vim.opt.nu = true
--vim.opt.relativenumber = true
--vim.opt.tabstop = 8
--vim.opt.softtabstop = 8
--vim.opt.shiftwidth = 8
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
--vim.opt.laststatus = 3

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
--vim.opt.timeoutlen = 300
