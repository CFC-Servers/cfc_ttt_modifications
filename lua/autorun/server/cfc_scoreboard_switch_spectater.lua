util.AddNetworkString("CFC_ScoreboardModes_SwitchSpectatePlayer")

local function receiveSwitchSpectateMessage(_, ply)
    local target = net.ReadEntity()
    if ply:IsSpec() and not ply:GetRagdollSpec() then
        if IsValid(target) then
            ply:Spectate(ply.spec_mode or OBS_MODE_CHASE)
            ply:SpectateEntity(target)
        end
    end
end


net.Receive("CFC_ScoreboardModes_SwitchSpectatePlayer", receiveSwitchSpectateMessage)