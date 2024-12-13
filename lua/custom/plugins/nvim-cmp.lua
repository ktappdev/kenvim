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
          require('luasnip').filetype_extend('javascriptreact', { 'typescript' })
          require('luasnip').filetype_extend('typescriptreact', { 'typescript' })

          local ls = require('luasnip')
          local s = ls.snippet
          local t = ls.text_node
          local i = ls.insert_node
          local f = ls.function_node
          local fmt = require('luasnip.extras.fmt').fmt
          local rep = require('luasnip.extras').rep

          -- Existing snippets
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

          -- SolidJS snippets
          ls.add_snippets('typescript', {
            -- Input two-way binding
            s('sinput', {
              t('<input type="'),
              i(1, "text"),
              t('" value={'),
              i(2, "value"),
              t('()} onInput={e => '),
              i(3, "setValue"),
              t('(e.currentTarget.value)}/>'),
            }),

            -- Basic Component
            s('scomp', {
              t('const '),
              i(1, "ComponentName"),
              t(': Component<{'),
              i(2),
              t('}> = (props) => {\n  '),
              i(0),
              t('\n  return <div></div>;\n};'),
            }),

            -- Parent Component
            s('spcomp', {
              t('const '),
              i(1, "ComponentName"),
              t(': ParentComponent<{'),
              i(2),
              t('}> = (props) => {\n  '),
              i(0),
              t('\n  return <div>{props.children}</div>;\n};'),
            }),

            -- Flow Component
            s('sfcomp', {
              t('const '),
              i(1, "ComponentName"),
              t(': FlowComponent<{'),
              i(2),
              t('}, '),
              i(3, "JSX.Element"),
              t('> = (props) => {\n  '),
              i(0),
              t('\n  return <div>{props.children}</div>;\n};'),
            }),

            -- Void Component
            s('svcomp', {
              t('const '),
              i(1, "ComponentName"),
              t(': VoidComponent<{'),
              i(2),
              t('}> = (props) => {\n  '),
              i(0),
              t('\n  return <div></div>;\n};'),
            }),

            -- Component with imports
            s('scompi', {
              t('import { Component } from "solid-js";\n\nconst '),
              i(1, "ComponentName"),
              t(': Component<{'),
              i(2),
              t('}> = (props) => {\n  '),
              i(0),
              t('\n  return <div></div>;\n};'),
            }),

            -- Component with imports and export
            s('scompie', {
              t('import { Component } from "solid-js";\n\nconst '),
              i(1, "ComponentName"),
              t(': Component<{'),
              i(2),
              t('}> = (props) => {\n  '),
              i(0),
              t('\n  return <div></div>;\n};\n\nexport default '),
              rep(1),
              t(';'),
            }),

            -- Signal
            s('ssig', {
              t('const ['),
              i(1, "state"),
              t(', set'),
              f(function(args)
                return args[1][1]:gsub("^%l", string.upper)
              end, { 1 }),
              t('] = createSignal('),
              i(2),
              t(');'),
            }),

            -- Effect
            s('seff', {
              t('createEffect(() => {\n  const value = '),
              i(1, "source"),
              t('();\n  '),
              i(0),
              t('\n});'),
            }),

            -- Effect with on
            s('seffon', {
              t('createEffect(on('),
              i(1, "source"),
              t(', (value, prev) => {\n  '),
              i(0),
              t('\n}));'),
            }),

            -- Memo
            s('smemo', {
              t('const '),
              i(1, "value"),
              t(' = createMemo(() => '),
              i(0),
              t(');'),
            }),

            -- Memo with on
            s('smemoon', {
              t('const '),
              i(1, "value"),
              t(' = createMemo(on('),
              i(2, "source"),
              t(', (value, prev) => '),
              i(0),
              t('));'),
            }),

            -- Context Provider
            s('sctxp', {
              t('import { createContext, useContext, ParentComponent } from "solid-js";\n'),
              t('import { createStore } from "solid-js/store";\n\n'),
              t('const defaultState = {};\n\n'),
              t('const '),
              i(1, "Name"),
              t('Context = createContext<[state: typeof defaultState, actions: {}]>([\n'),
              t('  defaultState,\n  {},\n]);\n\n'),
              t('export const '),
              rep(1),
              t('Provider: ParentComponent = (props) => {\n'),
              t('  const [state, setState] = createStore(defaultState);\n\n'),
              t('  return (\n    <'),
              rep(1),
              t('Context.Provider value={[state, {}]}>\n'),
              t('      {props.children}\n'),
              t('    </'),
              rep(1),
              t('Context.Provider>\n  );\n};\n\n'),
              t('export const use'),
              rep(1),
              t(' = () => useContext('),
              rep(1),
              t('Context);'),
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
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<C-Space>'] = cmp.mapping.complete {},
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
          -- { name = "supermaven" },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        },

        event_triggered_behavior = {
          autocomplete = false,
        },
      }
    end,
  },
}
