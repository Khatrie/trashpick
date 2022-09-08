local QBCore = exports['qb-core']:GetCoreObject()
local picking = false
-- Functions

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

local function Trashpicking(k)
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local trashindex = Config.Locations[k].coords
    local dist = #(pedCoords - trashindex)
    local opened = Config.Locations[k]["isOpened"]
        if dist <= 5.0 and not opened then
            exports["mz-skills"]:UpdateSkill("Scraping", 1)
            Config.Locations[k]["isOpened"] = true
                local animDict = "amb@world_human_bum_wash@male@low@idle_a"
                local animName = "idle_a"
                local ped = PlayerPedId()
                picking = true
                QBCore.Functions.Progressbar("idle_a", "Grabbing Trash", 3000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    --  amount = math.random(200)
                    --  TriggerServerEvent('trashpick:server:trashreward', k, amount)
                    TriggerServerEvent('trashpick:server:trashreward', k)
                    TriggerEvent('trashpick:client:setTimeout')
                    picking = false
                    TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
                end)
                TriggerEvent('trashpick:client:setTrashState', "isOpened", true, k)
                opened = Config.Locations[k]["isOpened"]
                CreateThread(function()
                    while picking do
                        loadAnimDict(animDict)
                        TaskPlayAnim(ped, animDict, animName, 2.0, -2.0, -1, 2, 0, 0, 0, 0 )
                        Wait(3000)
                    end
                end)
        else
            print("Failure")
        end
end

-- Events

RegisterNetEvent('trashpick:client:setTrashState', function(stateType, state, k)
    if stateType == "isBusy" and type(state) == "boolean" and Config.Locations[k] then
        Config.Locations[k][stateType] = state
    end
end)

-- Threads

local listen = false
local function Listen4Control(k)
    listen = true
    CreateThread(function()
        while listen do
            if IsControlJustPressed(0, 38) then
                listen = false
                if not Config.Locations[k]["isBusy"] and not Config.Locations[k]["isOpened"] then
                    exports['qb-core']:KeyPressed()
                    Trashpicking(k)
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
            end
            timeOut = false
        end)
    end
end)

CreateThread(function()
        for k, v in pairs(Config.Locations) do
            local CircleZone = CircleZone:Create(v.coords, v.radius, {
                name="jewelstore"..k,
                useZ = true,
                debugPoly = true,
            })

            CircleZone:onPlayerInOut(function(isPointInside)
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
