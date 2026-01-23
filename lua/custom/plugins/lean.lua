return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    -- optional: for standard text editing features
    -- 'hrsh7th/nvim-cmp',
  },
  opts = {
    lsp = {
      on_attach = function(client, bufnr)
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        local opts = { noremap = true, silent = true }

        -- Leader+i to toggle the "Infoview" (the proof state window)
        vim.keymap.set('n', '<leader>i', ':LeanInfoviewToggle<CR>', { buffer = bufnr, desc = 'Toggle Lean Infoview' })
      end,
    },
    mappings = true,
    infoview = {
      autoopen = true,
    },
  },
}
