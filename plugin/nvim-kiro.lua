-- nvim-kiro plugin entry point
if vim.g.loaded_nvim_kiro then
  return
end
vim.g.loaded_nvim_kiro = 1

vim.api.nvim_create_user_command('KiroChat', function()
  require('nvim-kiro.chat').toggle_chat()
end, {})
