if game.GetMap() ~= "ttt_biocube" then return end
hook.Add("PostCleanupMap", "CFC_TTT_RemoveBadModel", function()
    local ent = ents.GetMapCreatedEntity(1294)
    ent:Remove()
end)
