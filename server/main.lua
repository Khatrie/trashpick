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
            Wait(1)
            TriggerClientEvent('inventory:client:ItemBox', src, exports.ox_inventory:Items()[Config.TrashRewards[item]["item"]], 'add', amount)
        if Config.Locations[trashindex]['titanium'] then
            local random = math.random(1,10)
            amount = math.random(1,3)
            print(random)
            if random >= 1 then
                if Player.Functions.AddItem("titanium", amount) then
                    Wait(1)
                    TriggerClientEvent('inventory:client:ItemBox', src, exports.ox_inventory:Items()["titanium"], 'add', amount)
                else
                    QBCore.Functions.Notify('Your Pockets Are Full!', src, 'error', 2000)
                end
            end
        else
            QBCore.Functions.Notify('Your Pockets Are Full!', src, 'error', 2000)
        end
    end
end)
