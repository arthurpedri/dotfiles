return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('neogit').setup {}

    vim.keymap.set('n', '<leader>ng', ':Neogit<CR>', { noremap = true, silent = true, desc = 'Open [N]eo[G]it' })
  end,
}
