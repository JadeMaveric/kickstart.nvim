return {
  'folke/persistence.nvim',
  -- Only start session saving when an actual file was opened
  event = 'BufReadPre',
  opts = {},
  keys = {
    {
      '<leader>Sd',
      function()
        require('persistence').load()
      end,
      { desc = 'Load [S]ession for the current [D]irectory' },
    },
  },
}
