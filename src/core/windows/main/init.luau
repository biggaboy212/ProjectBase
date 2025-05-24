return function()
    --// Imports
    local uiLibrary = require("@modules/ui/init.luau")

    --// Variables
    local tabs = {
        Home = require("@core/windows/main/tabs/home.luau"), -- Im using absolute references here so luau-lsp dosen't freak out
        Player = require("@core/windows/main/tabs/player.luau"), -- ^ its either that or using --!nocheck ):
        Settings = require("@core/windows/main/tabs/settings.luau"),
    }

    --// Initialize
    local window = uiLibrary:Window({
        Name = "Main",
    })

    for _, tab in pairs(tabs) do
        tab({
            library = uiLibrary,
            window = window,
        })
    end
end
