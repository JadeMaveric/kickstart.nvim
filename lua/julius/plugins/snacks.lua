return { -- A collection of QoL plugins for Neovim
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@module 'snacks'
  ---@type snacks.Config
  opt = {
    -- Prevent LSP & Treesitter from attaching to largefiles
    bigfile = {},
    -- Visualise idents
    -- TODO: This doesn't seem to auto enable, I need to run `:lua Snacks.indent.enable()`
    indent = {
      animate = {
        -- TODO: This isn't honoured as expected
        enable = false,
      },
    },
    -- Better `vim.ui.input`
    input = {},
    -- Git
    lazygit = {},
    git = {},
    -- If nvim is opened with a file `nvim file.txt`
    -- render the file as quickly as possible
    quickfile = {},
    -- Smooth scrolling
    -- TODO: Doesn't seem to work
    scroll = {},
  },
  keys = {
    -- Git
    {
      '<leader>gg',
      function()
        Snacks.lazygit.open()
      end,
      { noremap = true, silent = true, desc = 'Git: Open Lazy[G]it' },
    },
    {
      '<leader>gf',
      function()
        Snacks.lazygit.log_file()
      end,
      { noremap = true, silent = true, desc = 'Git: Open Log for current [F]ile' },
    },
    {
      '<leader>gh',
      function()
        Snacks.lazygit.log()
      end,
      { noremap = true, silent = true, desc = 'Git: Open [H]istory Log' },
    },
    {
      '<leader>gl',
      function()
        Snacks.git.blame_line()
      end,
      { noremap = true, silent = true, desc = 'Git: Blame [L]ine' },
    },
  },
}
