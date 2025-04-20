return { -- Autocompletion
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '*',
  dependencies = {
    require 'plugins/dependencies/lua-snip', -- Snippet Engine
    'folke/lazydev.nvim',
    'fang2hou/blink-copilot',
  },
  --- @module 'blink.cmp'
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      -- See `:help ins-completion` for the defaul vim keymaps
      -- See :h blink-cmp-config-keymap for defining your own keymap
      --
      -- All presets have the following mappings:
      -- <tab>/<s-tab>: move to right/left of your snippet expansion
      -- <c-space>: Open menu or open docs if already open
      -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
      -- <c-e>: Hide menu
      -- <c-k>: Toggle signature help
      preset = 'enter',

      ['<Tab>'] = { 'snippet_forward', 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'snippet_backward', 'select_prev', 'fallback' },

      -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
      --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
    },

    completion = {
      -- By default, you may press `<c-space>` to show the documentation.
      -- Optionally, set `auto_show = true` to show the documentation after a delay.
      documentation = { auto_show = true, auto_show_delay_ms = 300 },

      -- Don't preselect the snippet
      list = { selection = { preselect = false } },

      -- Kind icon background
      -- See: https://cmp.saghen.dev/recipes.html#completion-menu-drawing
      menu = {
        draw = {
          columns = {
            { 'kind_icon' },
            { 'label', 'label_description', gap = 1 },
            { 'source_name' },
          },
          components = {
            source_name = {
              text = function(ctx)
                return '<' .. ctx.source_name .. '>'
              end,
            },
          },
          -- TODO: Syntax highlighting for completion menu items. But this is pretty barebones
          -- Take a look at `colorful-menu` for better highlights
          -- See: https://github.com/xzbdmw/colorful-menu.nvim
          treesitter = { 'lsp' },
        },
      },
    },

    sources = {
      default = { 'snippets', 'lsp', 'path', 'buffer', 'lazydev', 'copilot' },
      providers = {
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        copilot = {
          name = 'copilot',
          module = 'blink-copilot',
          score_offset = 100,
          async = true,
        },
      },
    },

    snippets = { preset = 'luasnip' },

    -- Blink.cmp includes an optional, recommended rust fuzzy matcher,
    -- which automatically downloads a prebuilt binary when enabled.
    --
    -- By default, we use the Lua implementation instead, but you may enable
    -- the rust implementation via `'prefer_rust_with_warning'`
    --
    -- See :h blink-cmp-config-fuzzy for more information
    fuzzy = { implementation = 'prefer_rust_with_warning' },

    -- Shows a signature help window while you type arguments for a function
    signature = { enabled = true },
  },
}
