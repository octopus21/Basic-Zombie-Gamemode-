util.AddNetworkString("lobiac")
util.AddNetworkString("lobigit")

function lobi_giris()

	net.Start("lobiac")
	net.Broadcast()

end

net.Receive("lobigit", function(len,ply)

	baslaRound()
	ply:VerEnvanteri()

end)

hook.Add("PlayerInitialSpawn", "çomar", lobi_giris)