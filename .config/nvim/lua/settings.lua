vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line number

vim.opt.mouse = "a" -- Use mouse

vim.opt.ignorecase = true -- ignore case in searches
vim.opt.smartcase = true -- Don't ignore case if the search term has uppercase

vim.opt.hlsearch = false -- Don't highlight all searches / only the one cursor is on

vim.opt.wrap = true -- Wraps line so it doesn't run off screen

vim.opt.breakindent = true -- Preserve indentation of virtual lines (lines that wrap due to last option)

vim.opt.tabstop = 2 -- Number of spaces for tab (default is 8)

vim.opt.shiftwidth = 2 -- Number of spaces to shift with >> and <<

vim.opt.expandtab = false -- Converting tabs to spaces

-- vim.opt.autochdir = true -- Change working dir to that of the file opened

-- Related to undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- Related to undo history

-- Disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.g.netrw_banner = 0 -- suppress banner for netrw
-- vim.g.netrw_size = 30 -- netrw file explorer windowsize

vim.opt.termguicolors = true -- Colors of terminal

vim.opt.updatetime = 50

vim.opt.signcolumn = "yes" -- Leave single column on the left

vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.splitbelow = true

vim.opt.iskeyword:append("-") -- treats words with `-` as single words (useful in deleting)

vim.opt.cursorline = true -- highlight line the cursor is on

-- vim.opt.list = true -- Show tabs and space
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split" -- Preview substitutions while typing

vim.opt.scrolloff = 9999 -- Prevent reaching the bottom before starting to scroll
