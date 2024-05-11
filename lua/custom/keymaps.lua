-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- remove the highlight asfter a search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>')
vim.keymap.set('n', 'q', '<cmd>:q<CR>')
vim.keymap.set('n', '<leader>bb', '<C-^>') -- just ti the previous file


vim.keymap.set('n', '<leader>cs', ':set spell!<CR>', { desc = 'Toggle text/code spelling', silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Show line diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Show line diagnostic [D]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--YANKY keys
vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)', { desc = 'Yanky put after' })
vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)', { desc = 'Yanky put before' })
-- vim.keymap.set({ 'n', 'x' }, 'gp', '<Plug>(YankyGPutAfter)', { desc = 'Yanky history' })
-- vim.keymap.set({ 'n', 'x' }, 'gP', '<Plug>(YankyGPutBefore)', { desc = 'Yanky history' })
vim.keymap.set({ 'n' }, '<leader>p', '<cmd>Telescope yank_history<cr>', { desc = 'Yanky history' })
vim.keymap.set('n', '<c-p>', '<Plug>(YankyPreviousEntry)')
vim.keymap.set('n', '<c-n>', '<Plug>(YankyNextEntry)')
-- Extra easy to find keymaps
vim.keymap.set('n', '<leader>sc', '<cmd>Telescope colorscheme<cr>', { desc = '[S]earch [C]olorscheme with preview' })
vim.keymap.set('n', '<leader>e', '<cmd>:Neotree toggle<CR>', { desc = 'Open [E]xplorer' })
vim.keymap.set('n', '<C-s>', '<cmd>:wa<CR>', { desc = '[W]rite all open files', silent = true })
-- vim.keymap.set('n', '<C-q>', '<cmd>:qa<CR>', { desc = '[Q]uite all open files' })
vim.keymap.set('i', 'jj', '<esc> :wa<cr>')
vim.keymap.set('i', 'jk', '<esc>')

--Trouble keys
vim.keymap.set('n', '<leader>tt', function()
  require('trouble').toggle()
end, { desc = '[t]oggle [t]rouble' })
vim.keymap.set('n', '<leader>tw', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[t]rouble [w]orkspace' })
vim.keymap.set('n', '<leader>td', function()
  require('trouble').toggle 'document_diagnostics'
end, { desc = '[t]oggle [d]iagnostics' })
vim.keymap.set('n', '<leader>tq', function()
  require('trouble').toggle 'quickfix'
end, { desc = '[t]oggle [q]uick Fix' })
vim.keymap.set('n', '<leader>tl', function()
  require('trouble').toggle 'loclist'
end, { desc = '[t]oggle [l]oclist' })
vim.keymap.set('n', 'gR', function()
  require('trouble').toggle 'lsp_references'
end, { desc = '[t]oggle [r]references' })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undotree' })
--
--Stole this from Prime
vim.keymap.set('n', '<leader>n', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>', { desc = 'Go error snippet' })
-- Git key bindings
vim.keymap.set('n', '<leader>gl', '<cmd>:LazyGit<CR>', { desc = 'LazyGit' })
vim.keymap.set('n', '<leader>gc', '<cmd>:Neogit commit<CR>', { desc = 'LazyGit' })
vim.keymap.set('n', '<leader>gg', '<cmd>:Neogit<CR>', { desc = 'LazyGit' })
-- clear all console.logs from file
vim.keymap.set('n', '<leader>cL', [[:%s/console\.log([^)]*);//g<CR>]],
  { noremap = true, silent = true, desc = 'Clear all console logs' })
-- sort tailwind classes
vim.keymap.set('n', '<leader>ct', ':TailwindSort<CR>', { noremap = true, silent = true, desc = 'Tailwind Sort' })
vim.keymap.set('n', '<leader>cx', ':TailwindSortOnSaveToggle<CR>',
  { noremap = true, silent = true, desc = 'Tailwind Sort on save toggle' })

vim.keymap.set('n', '<leader>gf', "<cmd>lua require('go.format').gofmt()<CR>", { desc = 'Go format' })
