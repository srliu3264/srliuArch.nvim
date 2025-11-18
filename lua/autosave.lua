-- autosave for every 1 second
local timer = vim.loop.new_timer()
timer:start(
  1000, -- wait 1 seconds
  1000, -- repeat every 1 seconds
  vim.schedule_wrap(function()
    local buf = vim.api.nvim_get_current_buf()
    if vim.api.nvim_buf_get_option(buf, 'modified') then
      vim.cmd 'silent write'
    end
  end)
)
