local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('fp-potion:client:startDrinkingPotion', function(Size, Type)
    if Type == "Healing" then
        if Size == "Small" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Small Healing Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionHealth(2, 1, Size)
                
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        elseif Size == "Med" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Medium Healing Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionHealth(3, 2, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)   
        elseif Size == "Large" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Large Healing Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionHealth(4, 3, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        elseif Size == "XLarge" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking XLarge Healing Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionHealth(5, 4, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        end
    elseif Type == "NightVision" then
        if Size == "Small" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Small Night Vision Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionNightVision(10000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        elseif Size == "Med" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Medium Night Vision Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionNightVision(20000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)   
        elseif Size == "Large" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Large Night Vision Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionNightVision(30000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        elseif Size == "XLarge" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking XLarge Night Vision Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionNightVision(40000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        end
    elseif Type == "Armour" then
        if Size == "Small" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Small Armor Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionArmour(2, 1, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        elseif Size == "Med" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Medium Armor Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionArmour(3, 2, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)   
        elseif Size == "Large" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Large Armor Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionArmour(4, 3, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        elseif Size == "XLarge" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking XLarge Armor Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionArmour(5, 4, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        end
    elseif Type == "Speed" then
        if Size == "Small" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Small Speed Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSpeed(10000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        elseif Size == "Med" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Medium Speed Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSpeed(20000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)   
        elseif Size == "Large" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Large Speed Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSpeed(30000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        elseif Size == "XLarge" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking XLarge Speed Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSpeed(40000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        end
    elseif Type == "Swim" then
        if Size == "Small" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Small Swim Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSwim(10000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        elseif Size == "Med" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Medium Swim Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSwim(20000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)   
        elseif Size == "Large" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking Large Swim Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSwim(30000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        elseif Size == "XLarge" then
            TriggerEvent('animations:client:EmoteCommandStart', {"fppotion"})
            QBCore.Functions.Progressbar("fp_potions", "Drinking XLarge Swim Potion", math.random(5000,10000), false, true, {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                FPPotionSwim(40000, Size)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end) 
        end
    end
end)

function FPPotionHealth(EffectTime, Multiplier, Size) 
    if Size == "Small" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Med" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Large" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "XLarge" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    end
end

function FPPotionHealth(EffectTime, Multiplier, Size) 
    if Size == "Small" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Med" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Large" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    elseif Size == "XLarge" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local Health = GetEntityHealth(ped)
            SetEntityHealth(PlayerPedId(), math.ceil(Health + Multiplier))
        end
        EffectTime = 0
    end
end

function FPPotionArmour(EffectTime, Multiplier, Size) 
    if Size == "Small" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local armor = GetPedArmour(PlayerPedId())
            SetPedArmour(PlayerPedId(), math.ceil(armor + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Med" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local armor = GetPedArmour(PlayerPedId())
            SetPedArmour(PlayerPedId(), math.ceil(armor + Multiplier))
        end
        EffectTime = 0
    elseif Size == "Large" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local armor = GetPedArmour(PlayerPedId())
            SetPedArmour(PlayerPedId(), math.ceil(armor + Multiplier))
        end
        EffectTime = 0
    elseif Size == "XLarge" then
        while EffectTime > 0 do
        Citizen.Wait(1000)
        EffectTime = EffectTime - 1
            local armor = GetPedArmour(PlayerPedId())
            SetPedArmour(PlayerPedId(), math.ceil(armor + Multiplier))
        end
        EffectTime = 0
    end
end

function FPPotionNightVision(Time, Size) 
    if Size == "Small" then
        CreateThread(function()
            SetNightvision(true)
            SetPedComponentVariation(PlayerPedId(), 1, 164, 0, 0)
            Wait(Time)
            SetNightvision(false)
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        end)
    elseif Size == "Med" then
        CreateThread(function()
            SetNightvision(true)
            SetPedComponentVariation(PlayerPedId(), 1, 164, 0, 0)
            Wait(Time)
            SetNightvision(false)
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        end)
    elseif Size == "Large" then
        CreateThread(function()
            SetNightvision(true)
            SetPedComponentVariation(PlayerPedId(), 1, 164, 0, 0)
            Wait(Time)
            SetNightvision(false)
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        end)
    elseif Size == "XLarge" then
        CreateThread(function()
            SetNightvision(true)
            SetPedComponentVariation(PlayerPedId(), 1, 164, 0, 0)
            Wait(Time)
            SetNightvision(false)
            SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        end)
    end
end

function FPPotionSpeed(Time, Size) 
    if Size == "Small" then
        CreateThread(function()
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.1)
            Wait(Time)
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "Med" then
        CreateThread(function()
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.2)
            Wait(Time)
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "Large" then
        CreateThread(function()
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.3)
            Wait(Time)
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "XLarge" then
        CreateThread(function()
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.4)
            Wait(Time)
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        end)
    end
end

function FPPotionSwim(Time, Size) 
    if Size == "Small" then
        CreateThread(function()
            SetSwimMultiplierForPlayer(PlayerId(), 1.15)
            Wait(Time)
            SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "Med" then
        CreateThread(function()
            SetSwimMultiplierForPlayer(PlayerId(), 1.30)
            Wait(Time)
            SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "Large" then
        CreateThread(function()
            SetSwimMultiplierForPlayer(PlayerId(), 1.45)
            Wait(Time)
            SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        end)
    elseif Size == "XLarge" then
        CreateThread(function()
            SetSwimMultiplierForPlayer(PlayerId(), 1.60)
            Wait(Time)
            SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        end)
    end
end

-- function Armour(EffectTime, Multiplier, Size)
--     while EffectTime > 0 do
--       Citizen.Wait(1000)
--       EffectTime = EffectTime - 1
--         local armor = GetPedArmour(PlayerPedId())
--         SetPedArmour(PlayerPedId(), math.ceil(armor + Multiplier))
--     end
--     EffectTime = 0
-- end


--ng_proc_brkbottle_02a


-- RegisterNetEvent('fp-potion:client:DoDmagae', function()
--     local ped = PlayerPedId()
--     local weapon = GetSelectedPedWeapon(ped)
--     TaskStartScenarioInPlace(ped, 'PROP_HUMAN_PARKING_METER')
--     QBCore.Functions.Progressbar("fp_potion", "Modifiying Weapon Damage", math.random(10000,15000) , false, true, {
--         disableMovement = false,
--         disableCarMovement = true,
--         disableMouse = false,
--         disableCombat = true,
--         }, {}, {}, {}, function() -- Done
--         ClearPedTasks(ped)
--         WeaponDMG(weapon)
--         end, function()
--         ClearPedTasks(ped)
--     end) -- Cancel
-- end)


-- function WeaponDMG(weapon)
--     CreateThread(function()
--         SetWeaponDamageModifier(weapon, 1.2)
--         Wait(25000)
--         SetWeaponDamageModifier(weapon, 0.5)
--     end)
--     Wait(3)
-- end