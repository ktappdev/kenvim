return {
  {
    'yetone/avante.nvim',
    enabled = true,
    lazy = true,
    event = 'VeryLazy',
    build = 'make',
    -- opts = {},
    provider = 'deepseek',
    providers = {
      deepseek = {
        __inherited_from = 'openai',
        api_key_name = 'DEEPSEEK_API_KEY',
        endpoint = 'https://api.deepseek.com',
        model = 'deepseek-reasoner',
      },
      openrouter = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        api_key_name = 'OPENROUTER_API_KEY',
        model = 'deepseek/deepseek-r1',
      },
    },
    opts = {},
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      {
        'grapp-dev/nui-components.nvim',
        dependencies = {
          'MunifTanjim/nui.nvim',
        },
      },
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { 'markdown', 'Avante' },
        },
        ft = { 'markdown', 'Avante' },
      },
    },
  },
}
