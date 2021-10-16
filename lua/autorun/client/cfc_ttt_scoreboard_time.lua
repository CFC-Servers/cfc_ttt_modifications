local HOUR = 60*60
local DAY = HOUR*24
local WEEK = DAY*7
local function printPlayTime(time)
    local out = ""

    local weeks = math.floor( time/WEEK )
    local days = math.floor( (time/DAY) % DAY )
    local hours = math.floor( (time/HOUR) % HOUR )

    if weeks > 0 then
            return string.format("%dW %dD  %dH", weeks, days, hours)
    end

    if days > 0 then
            return string.format("%dD %dH", days, hours)
    end

    return string.format("%dH", hours)
end

hook.Add("TTTScoreboardColumns", "CFC_TTT_AddUtimeScoreboardColumn", function(pnl)
    pnl:AddColumn("Playtime", function(ply)
            return printPlayTime(ply:GetUTimeTotalTime())
    end)
end)
