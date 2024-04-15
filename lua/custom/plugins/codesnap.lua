return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function()
    require("codesnap").setup({
      mac_window_bar = true,
      title = "CodeSnap.nvim",
      code_font_family = "FiraCode Nerd Font",
      watermark_font_family = "Pacifico",
      watermark = "headcookie",
      bg_theme = "summer",
      breadcrumbs_separator = "/",
      has_breadcrumbs = false,
    })
  end,
}
