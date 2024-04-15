return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},

    config = function()
      require('toggleterm').setup {
        direction = 'float',
        float_opts = {
          border = 'curved',
        },
      }
    end,
  },
}
