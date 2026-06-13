return {
  {
    'stevearc/aerial.nvim',
    cmd = { 'AerialToggle', 'AerialOpen', 'AerialNext', 'AerialPrev' },
    keys = {
      { '<leader>a', '<cmd>AerialToggle!<cr>', desc = 'Toggle [A]erial outline' },
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<cr>', { buffer = bufnr, desc = 'Aerial previous symbol' })
        vim.keymap.set('n', '}', '<cmd>AerialNext<cr>', { buffer = bufnr, desc = 'Aerial next symbol' })
      end,
    },
  },
}
