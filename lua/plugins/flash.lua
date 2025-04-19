return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@module 'flash'
  ---@type Flash.Config?
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    modes = {
      char = {
        jump_labels = true,
      },
      search = {
        enabled = true,
      },
    },
  },
}
