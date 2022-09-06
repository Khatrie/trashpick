local QBCore = exports['qb-core']:GetCoreObject()
local timeOut = false

RegisterNetEvent('trashpick:server:setTrashState', function(stateType, state, k)
    if stateType == "isBusy" and type(state) == "boolean" and Config.Locations[k] then
        Config.Locations[k][stateType] = state
        TriggerClientEvent('trashpick:client:setTrashState', -1, stateType, state, k)
    end
end)

RegisterNetEvent('trashpick:server:trashreward', function(trashindex)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local otherchance = math.random(1, 4)
    local odd = math.random(1, 4)

    local plrPed = GetPlayerPed(src)
    local plrCoords = GetEntityCoords(plrPed)
    local trashCoords = Config.Locations[trashindex].coords


        if plrPed then
            local dist = #(plrCoords - trashCoords)
            if dist <= 5.0 then
                Config.Locations[trashindex]["isOpened"] = true
                Config.Locations[trashindex]["isBusy"] = false
                TriggerClientEvent('trashpick:client:setTrashState', -1, "isOpened", true, trashindex)
                TriggerClientEvent('trashpick:client:setTrashState', -1, "isBusy", false, trashindex)

                if otherchance == odd then
                    local item = math.random(1, #Config.TrashRewards)
                    local amount = math.random(Config.TrashRewards[item]["amount"]["min"], Config.TrashRewards[item]["amount"]["max"])
                    if Player.Functions.AddItem(Config.TrashRewards[item]["item"], amount) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TrashRewards[item]["item"]], 'add')
                    else
                        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
                    end
                else
                    local amount = math.random(2, 4)
                    if Player.Functions.AddItem("10kgoldchain", amount) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["10kgoldchain"], 'add')
                    else
                        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
                    end
                end
            else
                cheating = true
            end
        end
end)
