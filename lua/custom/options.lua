vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Set tab stop for Go files
vim.cmd [[
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4
]]

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.cmd("silent! :up")
  end
})


vim.opt.updatetime = 300
-- Set number of spaces for indentation
-- vim.opt.shiftwidth = 4

-- vim.opt.tabstop = 4
-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable syntax highlighting
vim.opt.syntax = 'on'

-- Set color scheme (e.g., gruvbox)
vim.opt.termguicolors = true

-- Highlight cursor line
vim.opt.cursorline = true

-- Show matching brackets
vim.opt.showmatch = true

-- Set line wrapping
vim.opt.wrap = false

-- Set scroll offset
vim.opt.scrolloff = 8

-- Set search to be case-insensitive unless uppercase is used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable auto-indentation
vim.opt.autoindent = true

-- Set backup directory
vim.opt.backupdir = vim.fn.stdpath 'data' .. '/backup//'

-- Set undo directory
vim.opt.undodir = vim.fn.stdpath 'data' .. '/undodir//'

-- Set encoding
vim.opt.encoding = 'utf-8'

-- Set file format (e.g., unix)
vim.opt.fileformat = 'unix'

vim.cmd.hi 'Comment gui=none'
-- Set spell check to on by default
-- vim.cmd.set 'spell'
-- [[ Setting options ]]
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`
vim.g.skip_ts_context_commentstring_module = true
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like itsss!
vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
-- vim.opt.mouse = ''
--
-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
-- Enable vertical cursor locator
-- vim.opt.cursorcolumn = true
-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
