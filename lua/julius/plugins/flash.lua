return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@module 'flash'
  ---@type Flash.Config?
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
