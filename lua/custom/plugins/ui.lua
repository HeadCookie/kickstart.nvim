return {
  --   {
  --     "nvimdev/dashboard-nvim",
  --     event = "VimEnter",
  --     opts = function(_, opts)
  --       local logo = [[
  --  ██░ ██ ▓█████ ▄▄▄      ▓█████▄  ▄████▄   ▒█████   ▒█████   ██ ▄█▀ ██▓▓█████
  -- ▓██░ ██▒▓█   ▀▒████▄    ▒██▀ ██▌▒██▀ ▀█  ▒██▒  ██▒▒██▒  ██▒ ██▄█▒ ▓██▒▓█   ▀
  -- ▒██▀▀██░▒███  ▒██  ▀█▄  ░██   █▌▒▓█    ▄ ▒██░  ██▒▒██░  ██▒▓███▄░ ▒██▒▒███
  -- ░▓█ ░██ ▒▓█  ▄░██▄▄▄▄██ ░▓█▄   ▌▒▓▓▄ ▄██▒▒██   ██░▒██   ██░▓██ █▄ ░██░▒▓█  ▄
  -- ░▓█▒░██▓░▒████▒▓█   ▓██▒░▒████▓ ▒ ▓███▀ ░░ ████▓▒░░ ████▓▒░▒██▒ █▄░██░░▒████▒
  --  ▒ ░░▒░▒░░ ▒░ ░▒▒   ▓▒█░ ▒▒▓  ▒ ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░▒░▒░ ▒ ▒▒ ▓▒░▓  ░░ ▒░ ░
  --  ▒ ░▒░ ░ ░ ░  ░ ▒   ▒▒ ░ ░ ▒  ▒   ░  ▒     ░ ▒ ▒░   ░ ▒ ▒░ ░ ░▒ ▒░ ▒ ░ ░ ░  ░
  --  ░  ░░ ░   ░    ░   ▒    ░ ░  ░ ░        ░ ░ ░ ▒  ░ ░ ░ ▒  ░ ░░ ░  ▒ ░   ░
  --  ░  ░  ░   ░  ░     ░  ░   ░    ░ ░          ░ ░      ░ ░  ░  ░    ░     ░  ░
  --                          ░      ░
  --       ]]
  --
  --       logo = string.rep("\n", 8) .. logo .. "\n\n"
  --       opts.config.header = vim.split(logo, "\n")
  --     end,
  --   },

  {
    'catppuccin/nvim',
    lazy = true,
    name = 'catppuccin',
    opts = {
      flavour = 'mocha',
      transparent_background = true,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        navic = { enabled = true, custom_bg = 'lualine' },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  -- {
  --   'LazyVim/LazyVim',
  --   opts = {
  --     colorscheme = 'catppuccin',
  --   },
  -- },

  { 'echasnovski/mini.align', version = '*' },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { 'rose-pine/neovim', name = 'rose-pine' },
}
