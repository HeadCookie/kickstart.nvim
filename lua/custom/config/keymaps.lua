return {
  -- Editor keymaps
  -- Save file
  vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' }),
  vim.keymap.set('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' }),

  --Telescope
  vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', { desc = '[B]rowse files' }),

  -- Terminal
  vim.keymap.set('n', '<leader>ft', '<cmd>ToggleTerm<cr>', { desc = 'Open terminal' }),
  vim.keymap.set('t', '<C-/>', '<cmd>close<cr>', { desc = 'Hide terminal' }),
  vim.keymap.set('n', 'q', '<cmd>close<cr>', { desc = 'Hide terminal' }),

  -- LSP
  vim.keymap.set('n', '<leader>cm', '<cmd>Mason<cr>', { desc = 'Mason' }),

  -- Git
  vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'LazyGit' }),

  -- Lazy
  vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy' }),

  -- Windows
  vim.keymap.set('n', '<leader>ww', '<C-W>p', { desc = 'Other Window', remap = true }),
  vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Delete Window', remap = true }),
  vim.keymap.set('n', '<leader>w-', '<C-W>s', { desc = 'Split Window Below', remap = true }),
  vim.keymap.set('n', '<leader>w|', '<C-W>v', { desc = 'Split Window Right', remap = true }),
  vim.keymap.set('n', '<leader>-', '<C-W>s', { desc = 'Split Window Below', remap = true }),
  vim.keymap.set('n', '<leader>|', '<C-W>v', { desc = 'Split Window Right', remap = true }),

  -- Move Lines
  vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' }),
  vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' }),
  vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' }),
  vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' }),
  vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' }),
  vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' }),

  -- Misc
  vim.keymap.set('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>', { desc = 'Make it rain' }),
  vim.keymap.set('x', '<leader>us', '<cmd>CodeSnap<cr>', { desc = 'Create code snap' }),
}
