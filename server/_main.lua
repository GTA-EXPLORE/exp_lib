QBCore = exports['qb-core']:GetCoreObject()

GlobalState.PoliceCount = 0
local Cops = {}
RegisterNetEvent("QBCore:Server:OnPlayerLoaded", function ()
    local _source = source
    local player = QBCore.Functions.GetPlayer(_source)
    if player.PlayerData.job.type == "leo" then
        Cops[_source] = true
        GlobalState.PoliceCount = GlobalState.PoliceCount + 1
    end
end)

RegisterNetEvent("QBCore:Server:OnJobUpdate", function (source, job)
    if job.type == "leo" then
        Cops[source] = true
        GlobalState.PoliceCount = GlobalState.PoliceCount + 1

    elseif Cops[source] then
        Cops[source] = nil
        GlobalState.PoliceCount = GlobalState.PoliceCount - 1
    end
end)

AddEventHandler("playerDropped", function (source, reason)
    if Cops[source] then
        Cops[source] = nil
        GlobalState.PoliceCount = GlobalState.PoliceCount - 1        
    end
end)