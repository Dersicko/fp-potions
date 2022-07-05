local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("fp-potions:client:OpenSalesMenItems", function(args)
    local player = QBCore.Functions.GetPlayerData()
    exports['qb-menu']:openMenu({
        {
            header = "• Buy Potion Resources",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "• Blaze Powder <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpblazepowder"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpblazepowder,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpblazepowder",
                    Price = Config.ResoucePrices.fpblazepowder,
                }
            }
        },
        {
            header = "• Redstone <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpredstone"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpredstone,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpredstone",
                    Price = Config.ResoucePrices.fpredstone,
                }
            }
        },
        {
            header = "• Spider Eye <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpspidereye"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpspidereye,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpspidereye",
                    Price = Config.ResoucePrices.fpspidereye,
                }
            }
        },
        {
            header = "• Sugar <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpsugar"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpsugar,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpsugar",
                    Price = Config.ResoucePrices.fpsugar,
                }
            }
        },
        {
            header = "• Ghast Tear <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fptear"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fptear,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fptear",
                    Price = Config.ResoucePrices.fptear,
                }
            }
        },

        {
            header = "• Glow Dust <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpglowdust"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpglowdust,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpglowdust",
                    Price = Config.ResoucePrices.fpglowdust,
                }
            }
        },
        {
            header = "• Empty Water Bottle <img src=nui://"..Config.MenuImg..QBCore.Shared.Items["fpemptybottle"].image.." width=30px>",
            txt = "Price: $"..Config.ResoucePrices.fpemptybottle,
            params = {
                event = "fp-potions:startBuyingItems",
                args = {
                    Item = "fpemptybottle",
                    Price = Config.ResoucePrices.fpemptybottle,
                }
            }
        },
    })
end)

RegisterNetEvent('fp-potions:startBuyingItems', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Potion Resources",
        submitText = "Check Out",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = "How many do you want to buy?",
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end
        TriggerServerEvent('fp-potions:server:giveItemsToCraft', item.Item, sellingItem.amount, item.Price)
    end
end)

RegisterNetEvent('fp-potion:client:FillWaterBottle', function()
    Citizen.CreateThread(function()
        while true do
            local player = PlayerPedId()
            if IsEntityInWater(player) then
                QBCore.Functions.Progressbar("fp_potions", "Filling Bottle With Water", math.random(5000,10000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "amb@world_human_bum_wash@male@high@base",
                    anim = "base",
                    flags = 41,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("fp-potions:server:AddFullWaterBttle")
                end, function()
                    QBCore.Functions.Notify("Cancelled..", "error")
                end)
                break
            else
                QBCore.Functions.Notify("You aren't near any water", "error")
                break
            end
            Wait(2000)
        end
    end)
end)