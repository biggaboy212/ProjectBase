return function(self)
	--// Variables
	local library = self.library
	local window = self.window

	--// Initialize
	local settingsTab = window:Tab({
		Name = "Home",
	})

	settingsTab:Button({
		Name = "Unload menu",
		Callback = function(self)
			library:Unload()
		end,
	})
end
