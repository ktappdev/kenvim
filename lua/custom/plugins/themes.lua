return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
  },
  -- lazy
  {
    'sontungexpt/witch',
    priority = 1000,
    lazy = false,
    config = function(_, opts)
      require('witch').setup(opts)
    end,
  },
  {
    'lunarvim/synthwave84.nvim',
  },
}
