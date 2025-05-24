--!strict

local espLibrary = {}

--// Types
export type ESPObject = {
	Visible: boolean?,
	Color: Color3?,
	Transparency: number,
}

export type Skeleton = ESPObject

export type Tracer = ESPObject

export type Box2D = ESPObject & {
	OutlineColor: Color3?,
	OutlineTransparency: number,
}

--// Internal
local activeESP = {
	Skeletons = {} :: { [Instance]: Skeleton },
	Tracers = {} :: { [Instance]: Tracer },
	Box2Ds = {} :: { [Instance]: Box2D },
}

--// Constructors
function espLibrary.CreateSkeleton(
	target: Instance,
	properties: { Visible: boolean?, Color: Color3?, Transparency: number? }
): Skeleton
	local skeleton: Skeleton = {
		Visible = properties.Visible or true,
		Color = properties.Color or Color3.new(1, 1, 1),
		Transparency = properties.Transparency or 0,
	}
	activeESP.Skeletons[target] = skeleton
	return skeleton
end

function espLibrary.CreateTracer(
	target: Instance,
	properties: { Visible: boolean?, Color: Color3?, Transparency: number? }
): Tracer
	local tracer: Tracer = {
		Visible = properties.Visible or true,
		Color = properties.Color or Color3.new(1, 1, 1),
		Transparency = properties.Transparency or 0,
	}
	activeESP.Tracers[target] = tracer
	return tracer
end

function espLibrary.CreateBox2D(
	target: Instance,
	properties: {
		Visible: boolean?,
		Color: Color3?,
		Transparency: number?,
		OutlineColor: Color3?,
		OutlineTransparency: number?,
	}
): Box2D
	local box: Box2D = {
		Visible = properties.Visible or true,
		Color = properties.Color or Color3.new(1, 1, 1),
		Transparency = properties.Transparency or 0,
		OutlineColor = properties.OutlineColor or Color3.new(0, 0, 0),
		OutlineTransparency = properties.OutlineTransparency or 0,
	}
	activeESP.Box2Ds[target] = box
	return box
end

--// Constructors
function espLibrary.GetSkeleton(target: Instance): Skeleton?
	return activeESP.Skeletons[target]
end

function espLibrary.GetTracer(target: Instance): Tracer?
	return activeESP.Tracers[target]
end

function espLibrary.GetBox2D(target: Instance): Box2D?
	return activeESP.Box2Ds[target]
end

function espLibrary.RemoveESP(target: Instance)
	activeESP.Skeletons[target] = nil
	activeESP.Tracers[target] = nil
	activeESP.Box2Ds[target] = nil
end

return espLibrary
