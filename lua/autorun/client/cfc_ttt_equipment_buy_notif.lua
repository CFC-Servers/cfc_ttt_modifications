hook.Add("InitPostEntity", "CFC_TTTModification_LangInit", function()
    LANG.AddToLanguage("english", "cfc_ttt_buy_notification", "{name} purchased equipment: {equipment}")
end)


local equipmentLookup = {}
for _, v in pairs( GetEquipmentForRole(ROLE_TRAITOR) ) do 
    equipmentLookup[tostring(v.id)] = v
end
for _, v in pairs( GetEquipmentForRole(ROLE_DETECTIVE) ) do 
    equipmentLookup[tostring(v.id)] = v
end

net.Receive("CFC_TTT_EquipmentNotification", function()
    local ply = net.ReadEntity()
    local id = net.ReadString()

    local name = equipmentLookup[id].name

    LANG.Msg("cfc_ttt_buy_notification", {
        name=ply:GetName(),
        equipment=LANG.Param(name),
    })
end)
