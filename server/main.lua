local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-jewellery:server:gettrash', function(_, cb)
	cb(Config.Locations)
end)

RegisterNetEvent('trashpick:server:trashreward', function(trashindex)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = math.random(1, #Config.TrashRewards)
    local amount = math.random(Config.TrashRewards[item]["amount"]["min"], Config.TrashRewards[item]["amount"]["max"])
    if Player.Functions.AddItem(Config.TrashRewards[item]["item"], amount) then
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TrashRewards[item]["item"]], 'add')
    end
end)

