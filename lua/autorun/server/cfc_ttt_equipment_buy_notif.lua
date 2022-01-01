util.AddNetworkString("CFC_TTT_EquipmentNotification")

hook.Add("TTTOrderedEquipment", "CFC_NotifyTeammates", function(ply, equipmentId, isItem)
    local role = ply:GetRole()
    
    local rf = RecipientFilter()
    for _, p in pairs(player.GetHumans()) do
        if p:IsRole(role) then
            rf:AddPlayer(p)
        end
    end
    net.Start("CFC_TTT_EquipmentNotification")
        net.WriteEntity(ply)
        net.WriteString(tostring(equipmentId))
    net.Send(rf)
end)	