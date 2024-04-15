return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      -- Your configuration here
      -- Example: {'css', 'javascript', html = { mode = 'foreground' }},
      -- Refer to the nvim-colorizer.lua documentation for more options
    })
  end,
}
