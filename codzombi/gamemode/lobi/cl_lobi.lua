function lobi_gozuk()

     local panel = vgui.Create("DFrame")
     panel:SetSize(ScrW(),ScrH())
     panel:Center()
     panel:SetVisible(true)
     panel:ShowCloseButton(false)
     panel:SetDraggable(false)
     panel:SetTitle("zxczc")
     panel:MakePopup()
     panel.Paint = function(s , w , h)
           draw.RoundedBox(0,0,0,w,h,Color(0,0,0,255))
     end

     local dugme = vgui.Create("DButton", panel)
     dugme:SetSize(200, 75)
     dugme:SetText("Hazırmısınnn!!!")
     dugme:SetPos(ScrW()/2-100,ScrH()/2 - (75/2))
     dugme.DoClick = function()
          
         net.Start("lobigit")    
         net.SendToServer()    
         panel:Close()

      end

end

net.Receive("lobiac", lobi_gozuk)

