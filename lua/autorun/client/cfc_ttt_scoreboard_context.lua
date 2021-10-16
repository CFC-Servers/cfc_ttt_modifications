hook.Add("TTTScoreboardMenu", "CFC_TTTScoreboard_AddContextItems", function(menu)
    local player = menu.Player
    if not IsValid(player) then return end
    menu:AddOption("Open Profile", function() player:ShowProfile() end)
    menu:AddOption("Copy SteamID", function() SetClipboardText(player:SteamID()) end)
    menu:AddOption("Copy SteamID64", function() SetClipboardText(player:SteamID64()) end)
end)