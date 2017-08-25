util.AddNetworkString("lobiac")
util.AddNetworkString("lobigit")
--util.AddNetworkString("hazır")

function lobi_giris()

	net.Start("lobiac")
	net.Broadcast()

end

/*
function lobi_hazır()

	net.Start("hazır")
	net.Broadcast()
	-- body
end

*/

net.Receive("lobigit", function(len,ply)

	baslaRound()
	ply:VerEnvanteri()

end)

hook.Add("PlayerInitialSpawn", "çomar", lobi_giris)