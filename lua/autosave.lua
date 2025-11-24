local autosave_group = vim.api.nvim_create_augroup('Autosave', { clear = true })

-- 1. The Autocommand Logic
vim.api.nvim_create_autocmd({ 'InsertLeave', 'TextChanged' }, {
  group = autosave_group,
  pattern = '*',
  callback = function()
    -- Safety Checks: Do not save special buffers (fixes E382) or empty names
    if vim.bo.buftype ~= '' or not vim.bo.modifiable or vim.fn.expand '%' == '' then
      return
    end

    -- Check User Preference
    if vim.b.autosave_enabled == nil then
      -- Ask the user (once per buffer)
      local choice = vim.fn.confirm(
        'Enable Autosave for ' .. vim.fn.expand '%:t' .. '?',
        '&Yes\n&No',
        2 -- Default to No
      )

      if choice == 1 then
        vim.b.autosave_enabled = true
        print 'Autosave Enabled'
      else
        vim.b.autosave_enabled = false
        print 'Autosave Disabled'
      end
    end

    -- Execute Save if enabled
    if vim.b.autosave_enabled == true and vim.bo.modified then
      vim.cmd 'silent! write'
    end
  end,
})

-- 2. The Toggle Keymap (<Leader>as)
vim.keymap.set('n', '<Leader>sa', function()
  if vim.b.autosave_enabled then
    vim.b.autosave_enabled = false
    print 'Autosave: DISABLED for this buffer'
  else
    vim.b.autosave_enabled = true
    -- Force a write immediately if we just enabled it and the file is dirty
    if vim.bo.modified then
      vim.cmd 'silent! write'
    end
    print 'Autosave: ENABLED for this buffer'
  end
end, { desc = 'Toggle Autosave for current buffer' })
