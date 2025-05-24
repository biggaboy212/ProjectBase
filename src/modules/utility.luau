--!strict

local utilityLibrary = {}

--// Methods
function utilityLibrary.GetPlayer(): Player
	local success, result = pcall(function()
		return game:GetService("Players").LocalPlayer
	end)
	return success and result or nil
end

function utilityLibrary.GetCharacter(player: Player): Model?
	local success, result = pcall(function()
		return player.Character
	end)
	return success and result or nil
end

function utilityLibrary.GetHumanoid(player: Player): Humanoid?
	local success, result = pcall(function()
		local character = utilityLibrary.GetCharacter(player)
		return character and character:FindFirstChildOfClass("Humanoid")
	end)
	return success and result or nil
end

return utilityLibrary
