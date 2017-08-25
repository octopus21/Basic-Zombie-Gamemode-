AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

AddCSLuaFile("round/cl_round_kontrol.lua")
include("round/sv_round_kontrol.lua")

AddCSLuaFile("lobi/cl_lobi.lua")
include("lobi/sv_lobi.lua")

include("shared.lua")

local baslangicsilahlari = {
	
	"weapon_smg1"
}

local ply = FindMetaTable("Player")

function ply:VerEnvanteri()

	for k, v in pairs (baslangicsilahlari) do

		self:Give(v)

	end

end

function GM:PlayerConnect(name )
                
              print("oyuncu"..name.. "girdi")

end
