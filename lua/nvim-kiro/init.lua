local main = require("nvim-kiro.main")
local conf = require("nvim-kiro.config")

local NvimKiroPlugin = {}

--- Toggle the plugin by calling the `enable`/`disable` methods respectively.
function NvimKiroPlugin.toggle()
    if _G.NvimKiroPlugin.config == nil then
        _G.NvimKiroPlugin.config = conf.options
    end

    main.toggle("public_api_toggle")
end

--- Initializes the plugin, sets event listeners and internal state.
function NvimKiroPlugin.enable(scope)
    if _G.NvimKiroPlugin.config == nil then
        _G.NvimKiroPlugin.config = conf.options
    end

    main.toggle(scope or "public_api_enable")
end

--- Disables the plugin, clear highlight groups and autocmds, closes side buffers and resets the internal state.
function NvimKiroPlugin.disable()
    main.toggle("public_api_disable")
end

-- setup NvimKiroPlugin options and merge them with user provided ones.
function NvimKiroPlugin.setup(opts)
    _G.NvimKiroPlugin.config = conf.setup(opts)
end

_G.NvimKiroPlugin = NvimKiroPlugin

return _G.NvimKiroPlugin
