return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {
        extensions = {
          file_browser = {
            hijack_netrw = false,
          },
        },
      }
      require('telescope').load_extension 'file_browser'
    end,
  },
}
