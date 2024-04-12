return {
  -- "gc" to comment visual regions/lines
  {
    'numToStr/Comment.nvim',
    {
      'JoosepAlviste/nvim-ts-context-commentstring',
      event = 'BufRead',
    },
    lazy = false,
  },
}
