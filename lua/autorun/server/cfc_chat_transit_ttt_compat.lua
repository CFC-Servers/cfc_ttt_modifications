hook.Add("CFC_ChatTransit_ShouldRelayChatMessage", "CFC_PreventChatTransitMessages", function(ply, text, _)
    if not ply:Alive() and GetRoundState() == ROUND_ACTIVE then
        return false
    end
end)