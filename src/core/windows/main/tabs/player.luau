return function(self)
	--// Imports
	local utility = require("@modules/utility.luau")

	--// Variables
	local localPlayer = utility.GetPlayer()
	local window = self.window

	--// Initialize
	local playerTab = window:Tab({
		Name = "Player",
	})

	playerTab:Slider({
		Name = "Walkspeed",
		Minimum = 1,
		Maximum = 150,
		Default = 16,
		Callback = function(self, value)
			local humanoid = utility.GetHumanoid(localPlayer)
			if humanoid then
				humanoid.WalkSpeed = value
			else
				warn("Unable to find player humanoid.")
			end
		end,
	})
end
