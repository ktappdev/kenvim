return {
  -- "gc" to comment visual regions/lines
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    event = 'BufRead',
  },
}
