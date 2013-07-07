local ply = FindMetaTable("Player")
util.AddNetworkString( "database" )

function ply:ShortSteamID()
	local id = self:SteamID()
	local id = tostring(id)
	local id = string.Replace(id, "STEAM_0:0:", "")
	local id = string.Replace(id, "STEAM_0:1:", "")
	return id
end

local oldPrint = print
local function print(s)
	oldPrint("database.lua: " .. s)
end

function ply:databaseDefalut()
	self:databaseSetValue( "money", 100 )
	self:databaseSetValue( "xp", 0 )
	local i = {}
	i["gold1"] = { amount = 10 }
	self:databaseSetValue( "inventory", i )
end

