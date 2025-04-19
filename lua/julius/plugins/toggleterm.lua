-- https://github.com/akinsho/toggleterm.nvim
-- NOTE: Please ensure you have set hidden in your neovim config, otherwise the terminals will be discarded when closed.

-- function _lazygit_toggle()
--   local Terminal = require('toggleterm.terminal').Terminal
--   local lazygit = Terminal:new {
--     cmd = 'lazygit',
--     dir = 'git_dir',
--     hidden = true,
--     direction = 'tab',
--   }
--   lazygit:toggle()
-- end
--
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  ---@module 'toggleterm'
  ---@type ToggleTermConfig?
  opts = {
    open_mapping = [[<C-\>]],
    direction = 'float',
    float_opts = {
      border = 'curved',
    },
  },
  -- keys = {
  --   { '<leader>gg', '<cmd>lua _lazygit_toggle()<cr>', { noremap = true, silent = true, desc = 'Git: Open Lazy[G]it' } },
  -- },
}
