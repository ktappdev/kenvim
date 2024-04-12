-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- remove the highlight asfter a search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>')

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
