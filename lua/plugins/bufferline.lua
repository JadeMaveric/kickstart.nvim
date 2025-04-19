-- Make sure `vim.opt.termguicolors = true`

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  ---@module "bufferline"
  ---@type bufferline.UserConfig
  opts = {
    options = {
      -- TODO: This doesn't seem to work
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          highlights = 'Directory',
          separator = true, -- Use the default separator
        },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
