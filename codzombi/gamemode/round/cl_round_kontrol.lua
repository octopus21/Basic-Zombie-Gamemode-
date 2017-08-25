local round = 0

net.Receive("GuncelDurumRoundSayısı", function(len)

      round = net.ReadInt(4)

end)

function RoundDurumu()

	return round
end