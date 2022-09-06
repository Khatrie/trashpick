local QBCore = exports['qb-core']:GetCoreObject()
local firstAlarm = false
local smashing = false
local cops = 0
-- Functions

local function Trashpicking(k)
        if cops == 0 then
            local animDict = "missheist_jewel"
            local animName = "smash_case"
            local ped = PlayerPedId()
            smashing = true
            QBCore.Functions.Progressbar("grab_trash", "grabbing Trash", 3000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent('trashpick:server:trashreward', k)
                TriggerServerEvent('trashpick:client:setTimeout')
                smashing = false
                TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
            end, function() -- Cancel
                TriggerServerEvent('trashpick:server:setTrashState', "isBusy", false, k)
                smashing = false
                TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
            end)
            TriggerServerEvent('trashpick:server:setTrashState', "isBusy", true, k)

            CreateThread(function()
                while smashing do
                    loadAnimDict(animDict)
                    TaskPlayAnim(ped, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
                    Wait(3000)
                end
            end)
        else
            QBCore.Functions.Notify("Already been Searched", 'error')
        end
    end


-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.TriggerCallback('trashpick:server:getVitrineState', function(result)
		Config.Locations = result
	end)
end)

RegisterNetEvent('trashpick:client:setTrashState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
end)

-- Threads

local listen = false
local function Listen4Control(trash)
    listen = true
    CreateThread(function()
        while listen do
            if IsControlJustPressed(0, 38) then
                listen = false
                if not Config.Locations[trash]["isBusy"] and not Config.Locations[trash]["isOpened"] then
                    exports['qb-core']:KeyPressed()
                    Trashpicking(trash)
                    end
            end
            Wait(1)
        end
    end)
end

RegisterNetEvent('trashpick:client:setTimeout', function()
    if not timeOut then
        timeOut = true
        Citizen.CreateThread(function()
            Citizen.Wait(Config.Timeout)

            for k, _ in pairs(Config.Locations) do
                Config.Locations[k]["isOpened"] = false
                TriggerEvent('trashpick:client:setTrashState', -1, 'isOpened', false, k)
                TriggerEvent('trashpick:client:setAlertState', -1, false)
            end
            timeOut = false
        end)
    end
end)

CreateThread(function()
        for k, v in pairs(Config.Locations) do
            local boxZone = BoxZone:Create(v.coords, 1.8, 1.8, {
                name="trash"..k,
                heading = 40,
                minZ = v.coords.z - 1,
                maxZ = v.coords.z + 1,
                debugPoly = true
            })
            boxZone:onPlayerInOut(function(isPointInside)
                if isPointInside then
                    Listen4Control(k)
                    exports['qb-core']:DrawText("Search", 'left')
                else
                    listen = false
                    exports['qb-core']:HideText()
                end
            end)
        end
    end)
