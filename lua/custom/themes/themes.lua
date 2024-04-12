return {
  {
    "lunarvim/darkplus.nvim",
    lazy = false,
    opts = {
      darkplus_style = "dark",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
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
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    name = "tokyonight",
    transparent = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        transparent_mode = true,
        background_clear = {
          -- "float_win",
          "toggleterm",
          "telescope",
          -- "which-key",
          "renamer",
          "notify",
          "nvim-tree",
          -- "neo-tree",
          "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        },
      })
    end,
  },
  {
    'sontungexpt/witch',
    priority = 1000,
    lazy = false,
  },
  {
    'lunarvim/synthwave84.nvim',
  },
  {
    'olivercederborg/poimandres.nvim',
    lazy = true,
    priority = 1000,
  },
  {
    'LunarVim/lunar.nvim',
    lazy = true,
  },
}
