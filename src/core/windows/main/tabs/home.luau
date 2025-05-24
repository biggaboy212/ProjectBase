return function(self)
	--// Imports
	local utility = require("@modules/utility.luau")

	--// Variables
	local localPlayer = utility.GetPlayer()
	local window = self.window

	--// Initialize
	local homeTab = window:Tab({
		Name = "Home",
	})

	homeTab:Label({
		Name = `Welcome, {localPlayer.Name}`,
	})
end
