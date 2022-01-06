hook.Add("TTTBeginRound", "CFC_ReduceTraitorCredits", function()
	if player.GetCount() > 3 then return end
	local credits = math.max(0, player.GetCount()-2)
	for _, ply in pairs(player.GetAll()) do
		ply:SetCredits(credits)
	end
end)