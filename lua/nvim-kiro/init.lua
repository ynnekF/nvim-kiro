local M = {}

M.config = {
  window_type = 'split',
}

function M.setup(opts)
  opts = opts or {}
  M.config = vim.tbl_deep_extend('force', M.config, opts)
  
  -- Initialize reload module
  require('nvim-kiro.reload').setup()
end

return M
