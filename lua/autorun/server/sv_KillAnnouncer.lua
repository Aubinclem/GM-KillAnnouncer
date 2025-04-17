if SERVER then
    hook.Add("PlayerDeath", "KillAnnouncer", function(victim, inflictor, attacker)
        if attacker:IsPlayer() and victim ~= attacker then
            for _, ply in ipairs(player.GetAll()) do
                ply:ChatPrint("[KILL] " .. attacker:Nick() .. " a tué " .. victim:Nick() .. " !")
            end
        end
    end)
end
