QBCore = exports['qb-core']:GetCoreObject()

LocalPlayer.state.IsPolice = false

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function ()
    LocalPlayer.state.IsPolice = QBCore.Functions.GetPlayerData().job.type == "leo"
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    LocalPlayer.state.IsPolice = job.type == "leo"
end)