local round = 0 --0 bitiş 1 başlangıç
local t = 0
local denIx = 2
local zombieSayisi = 5
local dogDogdumu = false
local zombipoz = {
	
	Vector(508.649139, -1141.467041, -79.968750),
	Vector(-2003.920532, 800.120728, -79.178146),
	Vector(-2362.255127, -58.063850, -17.104515),
	Vector(-2035.386719, -708.938904, -81.117004),
	Vector(365.737762, -1999.634399, -79.968750),
	Vector(-816, -1692, -79),
}

local etkinround = 1


util.AddNetworkString("GuncelDurumRoundSayısı")


function baslaRound()
         
         round = 1
         GuncelRoundDurumu()
         dogDogdumu = true


end


function bitRound()

     round = 0
     GuncelRoundDurumu()

end


function RoundDurumu()
    

    return round


end

local digerdalgabeklemesuresi = false

hook.Add("Think", "DalgaSistemi", function()

         if round == 1 and dogDogdumu == true then

         	digerdalgabeklemesuresi = false

                if t < CurTime() then

                	t = CurTime() + denIx 

                	local temp = ents.Create("npc_zombie")
                	temp:SetPos(zombipoz[math.random(1 , table.Count(zombipoz))])
                	temp:Spawn()
      

                	zombieSayisi = zombieSayisi - 1

                	if zombieSayisi <= 0 then

                           dogDogdumu = false

                	end

                end



         end

                  if round == 1 and dogDogdumu == false and table.Count(ents.FindByClass("npc_zombie")) == 0 then

                           etkinround = etkinround + 1

                           digerdalgabeklemesuresi = true
                           timer.Simple(10, function() -- TİMERI KALDIRABİLİRSİN DURUMA BAĞLI

                           zombieSayisi = 1 * etkinround
                           dogDogdumu = true

                           	end)
                           
                  end

             

	end)



function GuncelRoundDurumu()

    net.Start("GuncelDurumRoundSayısı")
	    net.WriteInt(round, 4)
	net.Broadcast()

end


