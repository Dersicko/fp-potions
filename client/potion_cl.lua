local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for k, v in pairs(Config.PotionPedLocations) do
    RequestModel(GetHashKey(Config.PotionPedLocations[k].model))
    while not HasModelLoaded(GetHashKey(Config.PotionPedLocations[k].model)) do
        Wait(1)
    end
    ped = CreatePed(5, GetHashKey(Config.PotionPedLocations[k].model) , Config.PotionPedLocations[k].coords, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)

    exports['qb-target']:AddTargetModel(Config.PotionPedLocations[k].model, {
        options = {
            {
                type =  "client",
                event = "fp-potions:client:OpenSalesMenItems",
                icon = "far fa-comment",
                label = "Sales Man",
            },
        },
        distance = Config.PotionPedLocations[k].distance,
    }) 
    end

    for k, v in pairs(Config.PotionLocations) do
    exports['qb-target']:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name = v.name,
        heading = v.heading, debugPoly = v.debug, minZ = v.coords.z - 1, maxZ = v.coords.z + 1}, {
        options = {
            {
                type = "client", event = "fp-potions:client:OpenPotionMenu", icon = "fas fa-seedling", label = "• Open Potion Bench", job = v.Job,
            },
        },
        distance = v.distance
    })
    end
end)



RegisterNetEvent("fp-potions:client:OpenPotionMenu", function()
    local player = QBCore.Functions.GetPlayerData()
    local rep = player.metadata['potionrep']
    exports['qb-menu']:openMenu({
        {
            header = "• Potion Crafting",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "• Healing Potions",
            txt = "Potions That Heal You",
            params = {
                event = "fp-potions:client:OpenPotionsMenu",
                args = "heals",
            }
        },
        {
            header = "• Speed Potions",
            txt = "Potions That Boost Running",
            params = {
                event = "fp-potions:client:OpenPotionsMenu",
                args = "speed",
            }
        },
        {
            header = "• Armor Potions",
            txt = "Potions That Give Armor",
            params = {
                event = "fp-potions:client:OpenPotionsMenu",
                args = "armor",
            }
        },
        {
            header = "• Night Vision Potions",
            txt = "Potions That Let You See In The Dark",
            params = {
                event = "fp-potions:client:OpenPotionsMenu",
                args = "night",
            }
        },
        {
            header = "• Swim Potions",
            txt = "Potions That Boost Swim Speed",
            params = {
                event = "fp-potions:client:OpenPotionsMenu",
                args = "swim",
            }
        },
    })
end)

RegisterNetEvent("fp-potions:client:OpenPotionsMenu", function(args)
    local player = QBCore.Functions.GetPlayerData()
    local rep = player.metadata['potionrep']
    if args == "heals" then
    exports['qb-menu']:openMenu({
        {
            header = "• Healing Potions",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "⬅ Go Back",
            params = {
                event = "fp-potions:client:OpenPotionMenu",
            }
        },
        {
            header = "•  Small Healing Potion",
            txt = "Information: <br>- Level Required: 0 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 8x <br> - Sugar 10x <br> - Blazepowder 9x",

            params = {
                event = "fp-potions:client:craftingHealingPotions",
                args = {
                    Type = "Small",
                    Rep = rep,
                }
            }
        },

        {
            header = "•  Medium Healing Potion",
            txt = "Information: <br>- Level Required: 40 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 12x <br> - Sugar 20x <br> - Blazepowder 23x",
            params = {
                event = "fp-potions:client:craftingHealingPotions",
                args = {
                    Type = "Medium",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  Large Healing Potion",
            txt = "Information: <br>- Level Required: 75 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 10x <br> - Sugar 23x <br> - Blazepowder 23x <br> - Spider Eye 15x <br> - Glowdust 2x",
            params = {
                event = "fp-potions:client:craftingHealingPotions",
                args = {
                    Type = "Large",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  X-Large Healing Potion",
            txt = "Information: <br>- Level Required: 125 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 19x <br> - Sugar 26x <br> - Blazepowder 18x <br> - Spider Eye 15x <br> - Ghast Tear 20x <br> - Glowdust 10x",
            params = {
                event = "fp-potions:client:craftingHealingPotions",
                args = {
                    Type = "X-Large",
                    Rep = rep,
                }
            }
        },
    })
    elseif args == "speed" then
    exports['qb-menu']:openMenu({
        {
            header = "• Speed Potions",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "⬅ Go Back",
            params = {
                event = "fp-potions:client:OpenPotionMenu",
            }
        },
        {
            header = "•  Small Speed Potion",
            txt = "Information: <br>- Level Required: 0 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 8x <br> - Sugar 10x <br> - Blazepowder 9x",

            params = {
                event = "fp-potions:client:craftingSpeedPotions",
                args = {
                    Type = "Small",
                    Rep = rep,
                }
            }
        },

        {
            header = "•  Medium Speed Potion",
            txt = "Information: <br>- Level Required: 40 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 12x <br> - Sugar 20x <br> - Blazepowder 23x",
            params = {
                event = "fp-potions:client:craftingSpeedPotions",
                args = {
                    Type = "Medium",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  Large Speed Potion",
            txt = "Information: <br>- Level Required: 75 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 10x <br> - Sugar 23x <br> - Blazepowder 23x <br> - Spider Eye 15x <br> - Glowdust 2x",
            params = {
                event = "fp-potions:client:craftingSpeedPotions",
                args = {
                    Type = "Large",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  X-Large Speed Potion",
            txt = "Information: <br>- Level Required: 125 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 19x <br> - Sugar 26x <br> - Blazepowder 18x <br> - Spider Eye 15x <br> - Ghast Tear 20x <br> - Glowdust 10x",
            params = {
                event = "fp-potions:client:craftingSpeedPotions",
                args = {
                    Type = "X-Large",
                    Rep = rep,
                }
            }
        },
    })
    elseif args == "armor" then
    exports['qb-menu']:openMenu({
        {
            header = "• Armor Potions",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "⬅ Go Back",
            params = {
                event = "fp-potions:client:OpenPotionMenu",
            }
        },
        {
            header = "•  Small Armor Potion",
            txt = "Information: <br>- Level Required: 0 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 8x <br> - Sugar 10x <br> - Blazepowder 9x",
            params = {
                event = "fp-potions:client:craftingArmorPotions",
                args = {
                    Type = "Small",
                    Rep = rep,
                }
            }
        },

        {
            header = "•  Medium Armor Potion",
            txt = "Information: <br>- Level Required: 40 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 12x <br> - Sugar 20x <br> - Blazepowder 23x",
            params = {
                event = "fp-potions:client:craftingArmorPotions",
                args = {
                    Type = "Medium",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  Large Armor Potion",
            txt = "Information: <br>- Level Required: 75 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 10x <br> - Sugar 23x <br> - Blazepowder 23x <br> - Spider Eye 15x <br> - Glowdust 2x",
            params = {
                event = "fp-potions:client:craftingArmorPotions",
                args = {
                    Type = "Large",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  X-Large Armor Potion",
            txt = "Information: <br>- Level Required: 125 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 19x <br> - Sugar 26x <br> - Blazepowder 18x <br> - Spider Eye 15x <br> - Ghast Tear 20x <br> - Glowdust 10x",
            params = {
                event = "fp-potions:client:craftingArmorPotions",
                args = {
                    Type = "X-Large",
                    Rep = rep,
                }
            }
        },
    })
    elseif args == "night" then
    exports['qb-menu']:openMenu({
        {
            header = "• Night Vision Potions",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "⬅ Go Back",
            params = {
                event = "fp-potions:client:OpenPotionMenu",
            }
        },
        {
            header = "•  Small Night Vision Potion",
            txt = "Information: <br>- Level Required: 0 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 8x <br> - Sugar 10x <br> - Blazepowder 9x",

            params = {
                event = "fp-potions:client:craftingNightPotions",
                args = {
                    Type = "Small",
                    Rep = rep,
                }
            }
        },

        {
            header = "•  Medium Night Vision Potion",
            txt = "Information: <br>- Level Required: 40 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 12x <br> - Sugar 20x <br> - Blazepowder 23x",
            params = {
                event = "fp-potions:client:craftingNightPotions",
                args = {
                    Type = "Medium",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  Large Night Vision Potion",
            txt = "Information: <br>- Level Required: 75 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 10x <br> - Sugar 23x <br> - Blazepowder 23x <br> - Spider Eye 15x <br> - Glowdust 2x",
            params = {
                event = "fp-potions:client:craftingNightPotions",
                args = {
                    Type = "Large",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  X-Large Night Vision Potion",
            txt = "Information: <br>- Level Required: 125 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 19x <br> - Sugar 26x <br> - Blazepowder 18x <br> - Spider Eye 15x <br> - Ghast Tear 20x <br> - Glowdust 10x",
            params = {
                event = "fp-potions:client:craftingNightPotions",
                args = {
                    Type = "X-Large",
                    Rep = rep,
                }
            }
        },
    })
    elseif args == "swim" then
    exports['qb-menu']:openMenu({
        {
            header = "• Swim Potions",
            txt = "Current Level: "..rep,
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "⬅ Go Back",
            params = {
                event = "fp-potions:client:OpenPotionMenu",
            }
        },
        {
            header = "•  Small Swim Potion",
            txt = "Information: <br>- Level Required: 0 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 8x <br> - Sugar 10x <br> - Blazepowder 9x",

            params = {
                event = "fp-potions:client:craftingSwimPotions",
                args = {
                    Type = "Small",
                    Rep = rep,
                }
            }
        },

        {
            header = "•  Medium Swim Potion",
            txt = "Information: <br>- Level Required: 40 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 12x <br> - Sugar 20x <br> - Blazepowder 23x",
            params = {
                event = "fp-potions:client:craftingSwimPotions",
                args = {
                    Type = "Medium",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  Large Swim Potion",
            txt = "Information: <br>- Level Required: 75 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 10x <br> - Sugar 23x <br> - Blazepowder 23x <br> - Spider Eye 15x <br> - Glowdust 2x",
            params = {
                event = "fp-potions:client:craftingSwimPotions",
                args = {
                    Type = "Large",
                    Rep = rep,
                }
            }
        },
        {
            header = "•  X-Large Swim Potion",
            txt = "Information: <br>- Level Required: 125 <br>Requirements: <br> - Full Bottle Water 1x <br> - Redstone 19x <br> - Sugar 26x <br> - Blazepowder 18x <br> - Spider Eye 15x <br> - Ghast Tear 20x <br> - Glowdust 10x",
            params = {
                event = "fp-potions:client:craftingSwimPotions",
                args = {
                    Type = "X-Large",
                    Rep = rep,
                }
            }
        },
    })
    end
end)

RegisterNetEvent("fp-potions:client:craftingHealingPotions", function(data)
    local rep = data.Rep
    local Type = data.Type
    if data.Type == "Small" then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForSmallPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Small Healing Potion", 500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingHealing", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    elseif data.Type == "Medium" then
        if rep > 40 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForMediumPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Medium Healing Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingHealing", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "Large" then
        if rep > 75 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForLargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Large Healing Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingHealing", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "X-Large" then
        if rep > 125 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForX-LargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting X-Large Healing Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingHealing", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    end
end)

RegisterNetEvent("fp-potions:client:craftingSpeedPotions", function(data)
    local rep = data.Rep
    local Type = data.Type
    if data.Type == "Small" then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForSmallPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Small Speed Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSpeed", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    elseif data.Type == "Medium" then
        if rep > 40 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForMediumPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Medium Speed Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSpeed", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "Large" then
        if rep > 75 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForLargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Large Speed Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSpeed", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "X-Large" then
        if rep > 125 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForX-LargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting X-Large Speed Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSpeed", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    end
end)

RegisterNetEvent("fp-potions:client:craftingArmorPotions", function(data)
    local rep = data.Rep
    local Type = data.Type
    if data.Type == "Small" then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForSmallPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Small Armor Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingArmor", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    elseif data.Type == "Medium" then
        if rep > 40 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForMediumPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Medium Armor Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingArmor", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "Large" then
        if rep > 75 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForLargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Large Armor Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingArmor", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "X-Large" then
        if rep > 125 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForX-LargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting X-Large Armor Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingArmor", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    end
end)

RegisterNetEvent("fp-potions:client:craftingNightPotions", function(data)
    local rep = data.Rep
    local Type = data.Type
    if data.Type == "Small" then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForSmallPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Small Night Vision Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingNightVision", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    elseif data.Type == "Medium" then
        if rep > 40 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForMediumPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Medium Night Vision Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingNightVision", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "Large" then
        if rep > 75 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForLargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Large Night Vision Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingNightVision", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "X-Large" then
        if rep > 125 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForX-LargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting X-Large Night Vision Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingNightVision", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    end
end)

RegisterNetEvent("fp-potions:client:craftingSwimPotions", function(data)
    local rep = data.Rep
    local Type = data.Type
    if data.Type == "Small" then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForSmallPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Small Swim Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSwim", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    elseif data.Type == "Medium" then
        if rep > 40 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForMediumPotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Medium Swim Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSwim", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "Large" then
        if rep > 75 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForLargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting Large Swim Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSwim", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    elseif data.Type == "X-Large" then
        if rep > 125 then
        QBCore.Functions.TriggerCallback('fp-potions:sever:hasItemsForX-LargePotion', function(HasItem)
            if HasItem then
                QBCore.Functions.Progressbar("fp_potions", "Crafting X-Large Swim Potion", math.random(8000,12000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:startCraftingSwim", Type)
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
            else
                QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Your level isn't high enough for this.", "error")
    end
    end
end)