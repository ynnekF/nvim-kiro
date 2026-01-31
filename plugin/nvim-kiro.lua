-- nvim-kiro plugin entry point
if _G.NvimKiroPluginLoaded then
    return
end
_G.NvimKiroPluginLoaded = 1

vim.api.nvim_create_user_command("KiroChat", function()
    require("nvim-kiro.chat").toggle_chat()
end, {})
