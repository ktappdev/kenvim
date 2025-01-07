-- vim.lsp.inlay_hint.enable()
local opts = { noremap = true, silent = true }
-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- remove the highlight asfter a search
--
-- keybinds for prompting with groq
vim.keymap.set("n", "<leader>,", function() require("llm").prompt({ replace = false, service = "groq" }) end,
  { desc = "Prompt with groq" })
vim.keymap.set("v", "<leader>,", function() require("llm").prompt({ replace = false, service = "groq" }) end,
  { desc = "Prompt with groq" })
-- vim.keymap.set("v", "<leader>.", function() require("llm").prompt({ replace = true, service = "groq" }) end, { desc = "Prompt while replacing with groq" }))

vim.keymap.set("n", "<leader><leader>", function()
  require("telescope").extensions.smart_open.smart_open()
end, { noremap = true, silent = true })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>')
vim.keymap.set('n', 'q', '<cmd>:q<CR>')
vim.keymap.set('n', '<leader>bb', '<C-^>') -- just ti the previous file
vim.keymap.set('n', '<leader>tl', '<cmd>lua require("treesj").toggle()<cr>', { desc = '[t]oggle [l]ine wrap' })
vim.keymap.set('n', 'crl', ":%s/log\\.Println\\(.*\\)//gc<cr>", { desc = 'Clear all log.Println' })
vim.keymap.set('n', 'crf', ":%s/fmt\\.Println\\(.*\\)//gc<cr>", { desc = 'Clear all fmt.Println' })

vim.keymap.set('x', '<leader>cs', '<cmd>:CodeSnap<CR>', { desc = 'Code Snap to clipboard' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<leader>cs', ':set spell!<CR>', { desc = 'Toggle text/code spelling', silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Show line diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Show line diagnostic [D]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
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
-- vim.keymap.set('n', '<fn-j>', '5j')
-- vim.keymap.set('n', '<fn-k>', '5k')
-- vim.keymap.set('n', '<C-l>', '3w')
-- vim.keymap.set('n', '<C-h>', '3b')

--Trouble keys
vim.keymap.set('n', '<leader>tt', "<cmd>Trouble diagnostics toggle<cr>", { desc = '[t]oggle [t]rouble' })
vim.keymap.set('n', '<leader>tw', "<cmd>Trouble symbols toggle focus=false<cr>",
  { desc = '[t]rouble [w]orkspace symbols' })
vim.keymap.set('n', '<leader>td', "<cmd>Trouble loclist toggle<cr>", { desc = '[t]oggle [d]ocument local list' })
vim.keymap.set('n', '<leader>tq', "<cmd>Trouble qflist toggle<cr>", { desc = '[t]oggle [q]uick Fix' })
-- disabled becaus i want to use this for twilight
-- vim.keymap.set('n', '<leader>tl', function()
--   require('trouble').toggle 'loclist'
-- end, { desc = '[t]oggle [l]oclist' })
vim.keymap.set('n', 'gR', function()
  require('trouble').toggle 'lsp_references'
end, { desc = '[t]oggle [r]references' })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undotree' })
--
--Stole this from Prime
-- vim.keymap.set('n', '<leader>n', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>', { desc = 'Go error snippet' })
-- Git key bindings
vim.keymap.set('n', '<leader>gl', '<cmd>:LazyGit<CR>', { desc = 'LazyGit' })
vim.keymap.set('n', '<leader>gg', '<cmd>:Neogit<CR>', { desc = 'LazyGit' })
vim.keymap.set('n', '<leader>gc', ':!gitcomm --auto %<CR>', { noremap = true, silent = false })
-- clear all console.logs from file
vim.keymap.set('n', '<leader>cL', [[:%s/console\.log([^)]*);//g<CR>]],
  { noremap = true, silent = true, desc = 'Clear all console logs' })
-- sort tailwind classes
vim.keymap.set('n', '<leader>ct', ':TailwindSort<CR>', { noremap = true, silent = true, desc = 'Tailwind Sort' })
vim.keymap.set('n', '<leader>cx', ':TailwindSortOnSaveToggle<CR>',
  { noremap = true, silent = true, desc = 'Tailwind Sort on save toggle' })

vim.keymap.set('n', '<leader>gf', "<cmd>lua require('go.format').gofmt()<CR>", { desc = 'Go format' })

vim.keymap.set('n', '<leader>tp', "<cmd>lua require('precognition').toggle()<CR>", { desc = '[t]oggle [p]recognition' })
vim.keymap.set('n', '<leader>cp', "<cmd>lua require('precognition').peek()<CR>", { desc = 'Precognition peek' })
vim.keymap.set("n", "<leader>n", ":NnnPicker<cr>", { desc = 'nnn' })

--TERMINAL
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
vim.keymap.set('n', 'tf', [[<Cmd>:ToggleTerm size=40 dir=cwd direction=float<CR>]], { desc = '[t]oggle [f]loating Term' })
vim.keymap.set('n', 'tb', [[<Cmd>:ToggleTerm size=15 dir=cwd direction=horizontal<CR>]],
  { desc = '[t]oggle [b]ottom Term' })


-- vim.keymap.set('n', '<C-j>', '<cmd>:Treewalker Down<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<C-k>', '<cmd>:Treewalker Up<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<C-h>', '<cmd>:Treewalker Left<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<C-l>', '<cmd>:Treewalker Right<CR>', { noremap = true, silent = false })
