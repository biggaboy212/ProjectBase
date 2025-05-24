--!nolint
--!nocheck

--[[
    @repository https://github.com/SomeUser123/SomeProject123

    @author SomeUser123
    @name SomeProject123

    This file was automatically generated with darklua, it is not intended for manual editing.
--]]

_P = {
    genDate = "2025-05-24T18:30:41.877264400+00:00",
    cfg = "Debug",
    vers = "v0.0.0"
}

type BaseUI__DARKLUA_TYPE_a={
Name:string?,
Visible:boolean?
}

type Window__DARKLUA_TYPE_b=BaseUI__DARKLUA_TYPE_a

type Tab__DARKLUA_TYPE_c=BaseUI__DARKLUA_TYPE_a

type Button__DARKLUA_TYPE_d=BaseUI__DARKLUA_TYPE_a&{
Callback:((self:Button__DARKLUA_TYPE_d)->unknown)?
}local a a={cache={}, load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a.a()



local b={}














function b.Window(c,d:Window__DARKLUA_TYPE_b?,e:string?):Window__DARKLUA_TYPE_b
local f={}

return f
end

function b.Tab(c,d:Tab__DARKLUA_TYPE_c?):Tab__DARKLUA_TYPE_c
local e={}

return e
end

function b.Button(c,d:Button__DARKLUA_TYPE_d?):Button__DARKLUA_TYPE_d
local e={}

return e
end

return b end function a.b()



local b={}


function b.GetPlayer():Player
local c,d=pcall(function()
return game:GetService"Players".LocalPlayer
end)
return c and d or nil
end

function b.GetCharacter(c:Player):Model?
local d,e=pcall(function()
return c.Character
end)
return d and e or nil
end

function b.GetHumanoid(c:Player):Humanoid?
local d,e=pcall(function()
local d=b.GetCharacter(c)
return d and d:FindFirstChildOfClass"Humanoid"
end)
return d and e or nil
end

return b end function a.c()

return function(b)

local c=a.load'b'


local d=c.GetPlayer()
local e=b.window


local f=e:Tab{
Name="Home",
}

f:Label{
Name=`Welcome, {d.Name}`,
}
end end function a.d()

return function(b)

local c=a.load'b'


local d=c.GetPlayer()
local e=b.window


local f=e:Tab{
Name="Player",
}

f:Slider{
Name="Walkspeed",
Minimum=1,
Maximum=150,
Default=16,
Callback=function(g,h)
local i=c.GetHumanoid(d)
if i then
i.WalkSpeed=h
else
warn"Unable to find player humanoid."
end
end,
}
end end function a.e()

return function(b)

local c=b.library
local d=b.window


local e=d:Tab{
Name="Home",
}

e:Button{
Name="Unload menu",
Callback=function(f)
c:Unload()
end,
}
end end function a.f()

return function()

local b=a.load'a'


local c={
Home=a.load'c',
Player=a.load'd',
Settings=a.load'e',
}


local d=b:Window{
Name="Main",
}

for e,f in pairs(c)do
f{
library=b,
window=d,
}
end
end end end


local b=a.load'f'


b()