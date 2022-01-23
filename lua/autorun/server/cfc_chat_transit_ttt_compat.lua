hook.Add("CFC_ChatTransit_ShouldRelayChatMessage", "CFC_PreventChatTransitMessages", function(ply, text, _)
    if (not ply:Alive() or ply:Team() == TEAM_SPECTATOR) and GetRoundState() == ROUND_ACTIVE then
        return false
    end
end)