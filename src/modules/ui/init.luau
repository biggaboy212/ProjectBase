--!strict

local uiLibrary = {}

--// Types
type BaseUI = {
	Name: string?,
	Visible: boolean?,
}

type Window = BaseUI
type Tab = BaseUI
type Button = BaseUI & {
	Callback: ((self: Button) -> unknown)?,
}

--// Constructors
function uiLibrary:Window(properties: Window?, flag: string?): Window
	local window = {}

	return window
end

function uiLibrary:Tab(properties: Tab?): Tab
	local tab = {}

	return tab
end

function uiLibrary:Button(properties: Button?): Button
	local button = {}

	return button
end

return uiLibrary
