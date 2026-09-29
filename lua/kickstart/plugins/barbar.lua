return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    vim.api.nvim_set_keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
  end,
  opts = {
    icons = {
      filetype = { enabled = false },
    },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
