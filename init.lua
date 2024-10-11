require 'custom.options'
require 'custom.keymaps'
--NOTE: Making sure Lazy is installed
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
require('lazy').setup {
  { import = 'custom.themes' },
  { import = 'custom.plugins' },
}
require('codeium').setup {}
require('go').setup()
require('Comment').setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
vim.cmd.colorscheme 'catppuccin'

-- vim.opt.pumblend = 0 -- makes the popup suggestions background not see through

local float = { focusable = true, style = 'minimal', border = 'rounded' }
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, float)
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, float)
