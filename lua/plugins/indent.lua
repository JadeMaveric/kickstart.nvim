-- Add indentation guides even on blank lines
-- TODO: This works, but the config in LazyVim was better
-- it would highlight the current indentation I was working at
-- This one can only highlight the scope - which is also useful.
-- I would like them to both work together. Indent highlight + Scope highlight
return {
  'lukas-reineke/indent-blankline.nvim',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  ---@module 'ibl'
  ---@type ibl.config
  opts = {
    indent = {
      char = '┆',
    },
    scope = {
      char = '▏', --'│',
      show_start = true,
      show_end = false,
    },
  },
}
