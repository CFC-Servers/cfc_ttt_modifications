hook.Add( "OnPlayerChat", "CFC_TTT_SprayURL_Compat", function( ply, strText, bTeam, bDead ) 
    if ply ~= LocalPlayer() then return end

    strText = string.lower( strText ) -- make the string lower case

    if strText == "/sprays" then
        local DFrame = vgui.Create("DFrame")
        DFrame:SetPos(ScrW()/2, ScrH()/2)
        DFrame:SetSize(300, 500)
        DFrame:MakePopup()
        list.Get("DesktopWindows")["SprayURL"].init(nil,  DFrame)
        return true
    end
end )