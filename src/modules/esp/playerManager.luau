--!strict

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local espLibrary = require("./init.luau")

local playerManager = {}

type ESPObject = espLibrary.ESPObject
type Skeleton = espLibrary.Skeleton
type Tracer = espLibrary.Tracer
type Box2D = espLibrary.Box2D

local box2dTable: { [Player]: Box2D } = {}
local tracerTable: { [Player]: Tracer } = {}
local skeletonTable: { [Player]: Skeleton } = {}

local function createProxy(tbl: { [Player]: ESPObject }): any
	return setmetatable({}, {
		__index = function(_, key)
			local sample = next(tbl)
			if sample then
				return tbl[sample][key]
			end
			return nil
		end,
		__newindex = function(_, key, value)
			for _, esp in pairs(tbl) do
				(esp :: any)[key] = value
			end
		end,
	})
end

local function setupPlayer(player: Player)
	if player == LocalPlayer then
		return
	end

	local character = player.Character or player.CharacterAdded:Wait()

	local box = espLibrary.CreateBox2D(character, {})
	local tracer = espLibrary.CreateTracer(character, {})
	local skeleton = espLibrary.CreateSkeleton(character, {})

	box2dTable[player] = box
	tracerTable[player] = tracer
	skeletonTable[player] = skeleton

	player.CharacterRemoving:Connect(function()
		espLibrary.RemoveESP(character)
		box2dTable[player] = nil
		tracerTable[player] = nil
		skeletonTable[player] = nil
	end)
end

Players.PlayerAdded:Connect(setupPlayer)
for _, player in pairs(Players:GetPlayers()) do
	setupPlayer(player)
end

playerManager.Box2D = createProxy(box2dTable)
playerManager.Tracer = createProxy(tracerTable)
playerManager.Skeleton = createProxy(skeletonTable)

return playerManager
