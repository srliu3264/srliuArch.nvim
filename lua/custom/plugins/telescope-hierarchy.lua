return {
  {
    'jmacadie/telescope-hierarchy.nvim',
    dependencies = {
      {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
      },
    },
    keys = {
      {
        '<leader>si',
        '<cmd>Telescope hierarchy incoming_calls<cr>',
        desc = 'LSP: [S]earch [I]ncoming Calls',
      },
      {
        '<leader>so',
        '<cmd>Telescope hierarchy outgoing_calls<cr>',
        desc = 'LSP: [S]earch [O]utgoing Calls',
      },
    },
    opts = {
      extensions = {
        hierarchy = {
          -- See https://github.com/jmacadie/telescope-hierarchy.nvim#config
        },
      },
    },
    config = function(_, opts)
      require('telescope').setup(opts)
      require('telescope').load_extension 'hierarchy'
    end,
  },
}
