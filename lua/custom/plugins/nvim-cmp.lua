return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },
        config = function(_, opts)
          if opts then
            require('luasnip').config.setup(opts)
          end
          vim.tbl_map(function(type)
            require('luasnip.loaders.from_' .. type).lazy_load()
          end, { 'vscode', 'snipmate', 'lua' })
          require('luasnip').filetype_extend('dart', { 'flutter' })
          local ls = require 'luasnip'
          local t = ls.text_node
          local i = ls.insert_node
          local s = ls.snippet

          ls.add_snippets('javascript', {
            s('<', {
              t '<',
              i(1),
              t '/>',
            }),
          })

          ls.add_snippets('dart', {
            s('toc', {
              t 'final colors = Theme.of(context).colorScheme;',
            }),
          })
        end,
      },
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      -- If you want to add a bunch of pre-configured snippets,
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = {
          completeopt = 'menu,menuone,noinsert',
          autocomplete = false,
        },

        mapping = cmp.mapping.preset.insert {
          -- Select the [n]ext item
          ['<C-n>'] = cmp.mapping.select_next_item(),
          -- Select the [p]revious item
          ['<C-p>'] = cmp.mapping.select_prev_item(),

          -- Accept ([y]es) the completion.
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          ['<CR>'] = cmp.mapping.confirm { select = true },

          -- Manually trigger a completion from nvim-cmp.
          ['<C-Space>'] = cmp.mapping.complete {},

          -- Snippet navigation
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),

          -- New mappings for Tab and Shift-Tab
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              cmp.complete()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { 'i', 's' }),
        },

        sources = {
          { name = 'codeium' },
          { name = "supermaven" },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        },

        -- Disable event-triggered behavior
        event_triggered_behavior = {
          autocomplete = false,
        },
      }
    end,
  },
}
