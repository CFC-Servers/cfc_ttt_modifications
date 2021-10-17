local function spectate(ply)
    net.Start("CFC_ScoreboardModes_SwitchSpectatePlayer")
        net.WriteEntity(ply)
    net.SendToServer()
end

hook.Add("TTTScoreboardMenu", "CFC_TTTScoreboard_AddContextItems", function(menu)
    local player = menu.Player
    if not IsValid(player) then return end
    menu:AddOption("Open Profile", function() player:ShowProfile() end)
    menu:AddOption("Copy SteamID", function() SetClipboardText(player:SteamID()) end)
    menu:AddOption("Copy SteamID64", function() SetClipboardText(player:SteamID64()) end)
    menu:AddOption("Spectate Player", function() spectate(player) end)
end)
