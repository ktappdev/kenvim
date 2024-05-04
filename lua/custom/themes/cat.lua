return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    opts = {
      transparent_background = true,

      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        navic = { enabled = true, custom_bg = 'lualine' },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
      custom_highlights = function(colors)
        local custom_highlights_table = {
          CursorLine = { bg = '#3a3b3c' },
          ColorColumn = { bg = '#4e4e4e' },
          TabLineFill = { bg = '#bbc2cf' },
          WinSeparator = { bg = '#bbc2cf' },
          Pmenu = { bg = '#090d24' },
          NormalFloat = { bg = '#090d24' },
          Visual = { bg = '#61677d', style = { 'bold' } },
          HighlightOnYank = { bg = '#71778d' }, -- see settings for this

          CursorLineNr = { fg = '#e2e209' },
          SignColumn = { fg = '#a8a8a8' },
          LineNr = { fg = '#8a8a8a' },
          Comment = { fg = '#aaaaaa' },
          Todo = { fg = '#aaaaaa', bg = 'none', style = { 'bold' } },
          NonText = { fg = '#729ecb', style = { 'bold' } },
          VertSplit = { fg = 'NONE', style = { 'reverse' } },
          StatusLine = { fg = 'NONE', style = { 'bold', 'reverse' } },
          StatusLineNC = { fg = 'NONE', style = { 'reverse' } },
          MoreMsg = { fg = 'SeaGreen', style = { 'bold' } },
          MatchParen = { fg = '#87ff00', style = { 'bold' } },

          -- Search       = { fg='#c6d0f5', bg='#506373' },
          -- CurSearch    = { fg='#506373', bg='#c6d0f5' },
          diffChanged = { fg = '#e5c890' },
        }
        -- if vim.bo.filetype == 'elixir' then
        --   local my_colors_palette = require('catppuccin.palettes').get_palette(my_flavour)
        --   custom_highlights_table['@function'] = { fg = my_colors_palette.yellow }
        --   custom_highlights_table['@method']   = { fg = my_colors_palette.yellow }
        --   custom_highlights_table['@type']     = { fg = my_colors_palette.blue }
        -- end
        return custom_highlights_table
      end,
    },
  },
}
