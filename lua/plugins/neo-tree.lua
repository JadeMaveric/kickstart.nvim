-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- Optional image support in preview window:
    -- { "3rd/image.nvim", opts = {}},
  },
  lazy = false, -- neo-tree will lazily load itself
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = 'Toggle file explorer', silent = true },
    { '\\', ':Neotree reveal<CR>', desc = 'Toggle file explorer', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config?
  opts = {
    -- Close neo-tree if it is the last window left in the tab
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    -- When opening files, do not use windows containing these filestypes or buftypes
    open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf' },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open',
        },
        position = 'left',
        width = 30,
      },
      filtered_items = {
        visible = false,
        hide_gitignored = true,
        always_show_by_pattern = {
          '.env*',
        },
      },
      -- Use the OS level file watchers to detect changes
      -- instead of relying on nvim autcmd events.
      use_libuv_file_watcher = true,
    },
  },
}
