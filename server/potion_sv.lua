local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('damagepotion', function(source) 
	TriggerClientEvent('fp-potion:client:DoDmagae', source) 
end) 

QBCore.Functions.CreateUseableItem('fpemptybottle', function(source) 
	TriggerClientEvent('fp-potion:client:FillWaterBottle', source) 
end) 

RegisterServerEvent("fp-potions:server:AddFullWaterBttle", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.RemoveItem("fpemptybottle", 1)
        Player.Functions.AddItem("fpfullbottle", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpfullbottle"], 'add', 1)
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterNetEvent('fp-potions:server:giveItemsToCraft', function(itemName, itemAmount, itemPrice)
    print("Price: "..itemPrice.." Name: "..itemName.." Amount: "..itemAmount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)
    if Player then
        if Player.PlayerData.money.cash >= totalPrice then
            Player.Functions.RemoveMoney('cash', totalPrice)
            Player.Functions.AddItem(itemName, tonumber(itemAmount))
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'add', itemAmount)
        elseif Player.PlayerData.money.bank >= totalPrice then
            Player.Functions.RemoveMoney('cash', totalPrice)
            Player.Functions.AddItem(itemName, tonumber(itemAmount))
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'add', itemAmount)
        else
            TriggerClientEvent("QBCore:Notify", src, "You don't have enough money", "error")
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterServerEvent("fp-potions:server:startCraftingHealing", function(Type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = math.random(1, 2)
    if Player then
        if Type == "Small" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 5)
            Player.Functions.RemoveItem("fpsugar", 10)
            Player.Functions.RemoveItem("fpblazepowder", 9)
            Player.Functions.AddItem("fphealingsmall", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fphealingsmall"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.SmallPotionLevelAdd))

        elseif Type == "Medium" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 12)
            Player.Functions.RemoveItem("fpsugar", 20)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.AddItem("fphealingmed", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fphealingmed"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.MediumPotionLevelAdd))
        elseif Type == "Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 10)
            Player.Functions.RemoveItem("fpsugar", 23)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fpglowdust", 2)
            Player.Functions.AddItem("fphealinglarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fphealinglarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.LargePotionLevelAdd))
        elseif Type == "X-Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 19)
            Player.Functions.RemoveItem("fpsugar", 26)
            Player.Functions.RemoveItem("fpblazepowder", 18)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fptear", 20)
            Player.Functions.RemoveItem("fpglowdust", 10)
            Player.Functions.AddItem("fphealingxlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fphealingxlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.XLargePotionLevelAdd))
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterServerEvent("fp-potions:server:startCraftingSpeed", function(Type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = math.random(1, 2)
    if Player then
        if Type == "Small" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 5)
            Player.Functions.RemoveItem("fpsugar", 10)
            Player.Functions.RemoveItem("fpblazepowder", 9)
            Player.Functions.AddItem("fpspeedsmall", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpspeedsmall"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.SmallPotionLevelAdd))

        elseif Type == "Medium" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 12)
            Player.Functions.RemoveItem("fpsugar", 20)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.AddItem("fpspeedmed", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpspeedmed"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.MediumPotionLevelAdd))
        elseif Type == "Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 10)
            Player.Functions.RemoveItem("fpsugar", 23)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fpglowdust", 2)
            Player.Functions.AddItem("fpspeedlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpspeedlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.LargePotionLevelAdd))
        elseif Type == "X-Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 19)
            Player.Functions.RemoveItem("fpsugar", 26)
            Player.Functions.RemoveItem("fpblazepowder", 18)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fptear", 20)
            Player.Functions.RemoveItem("fpglowdust", 10)
            Player.Functions.AddItem("fpspeedxlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpspeedxlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.XLargePotionLevelAdd))
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterServerEvent("fp-potions:server:startCraftingArmor", function(Type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = math.random(1, 2)
    if Player then
        if Type == "Small" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 5)
            Player.Functions.RemoveItem("fpsugar", 10)
            Player.Functions.RemoveItem("fpblazepowder", 9)
            Player.Functions.AddItem("fparmorsmall", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fparmorsmall"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.SmallPotionLevelAdd))

        elseif Type == "Medium" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 12)
            Player.Functions.RemoveItem("fpsugar", 20)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.AddItem("fparmormed", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fparmormed"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.MediumPotionLevelAdd))
        elseif Type == "Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 10)
            Player.Functions.RemoveItem("fpsugar", 23)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fpglowdust", 2)
            Player.Functions.AddItem("fparmorlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fparmorlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.LargePotionLevelAdd))
        elseif Type == "X-Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 19)
            Player.Functions.RemoveItem("fpsugar", 26)
            Player.Functions.RemoveItem("fpblazepowder", 18)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fptear", 20)
            Player.Functions.RemoveItem("fpglowdust", 10)
            Player.Functions.AddItem("fparmorxlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fparmorxlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.XLargePotionLevelAdd))
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterServerEvent("fp-potions:server:startCraftingNightVision", function(Type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = math.random(1, 2)
    if Player then
        if Type == "Small" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 5)
            Player.Functions.RemoveItem("fpsugar", 10)
            Player.Functions.RemoveItem("fpblazepowder", 9)
            Player.Functions.AddItem("fpnightvisionsmall", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpnightvisionsmall"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.SmallPotionLevelAdd))

        elseif Type == "Medium" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 12)
            Player.Functions.RemoveItem("fpsugar", 20)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.AddItem("fpnightvisionmed", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpnightvisionmed"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.MediumPotionLevelAdd))
        elseif Type == "Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 10)
            Player.Functions.RemoveItem("fpsugar", 23)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fpglowdust", 2)
            Player.Functions.AddItem("fpnightvisionlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpnightvisionlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.LargePotionLevelAdd))
        elseif Type == "X-Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 19)
            Player.Functions.RemoveItem("fpsugar", 26)
            Player.Functions.RemoveItem("fpblazepowder", 18)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fptear", 20)
            Player.Functions.RemoveItem("fpglowdust", 10)
            Player.Functions.AddItem("fpnightvisionxlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpnightvisionxlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.XLargePotionLevelAdd))
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

RegisterServerEvent("fp-potions:server:startCraftingSwim", function(Type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = math.random(1, 2)
    if Player then
        if Type == "Small" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 5)
            Player.Functions.RemoveItem("fpsugar", 10)
            Player.Functions.RemoveItem("fpblazepowder", 9)
            Player.Functions.AddItem("fpswimsmall", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpswimsmall"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.SmallPotionLevelAdd))

        elseif Type == "Medium" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 12)
            Player.Functions.RemoveItem("fpsugar", 20)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.AddItem("fpswimmed", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpswimmed"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.MediumPotionLevelAdd))
        elseif Type == "Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 10)
            Player.Functions.RemoveItem("fpsugar", 23)
            Player.Functions.RemoveItem("fpblazepowder", 23)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fpglowdust", 2)
            Player.Functions.AddItem("fpswimlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpswimlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.LargePotionLevelAdd))
        elseif Type == "X-Large" then 
            Player.Functions.RemoveItem("fpfullbottle", 1)
            Player.Functions.RemoveItem("fpredstone", 19)
            Player.Functions.RemoveItem("fpsugar", 26)
            Player.Functions.RemoveItem("fpblazepowder", 18)
            Player.Functions.RemoveItem("fpspidereye", 15)
            Player.Functions.RemoveItem("fptear", 20)
            Player.Functions.RemoveItem("fpglowdust", 10)
            Player.Functions.AddItem("fpswimxlarge", amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["fpswimxlarge"], 'add', amount)
            Player.Functions.SetMetaData("potionrep", Player.PlayerData.metadata["potionrep"]+(Config.ResoucePrices.XLargePotionLevelAdd))
        end
    else
        DropPlayer(src, "Attempted exploit abuse")
    end
end)

QBCore.Functions.CreateCallback('fp-potions:sever:hasItemsForSmallPotion', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Item = 
    Player.Functions.GetItemByName("fpfullbottle") and
    Player.Functions.GetItemByName("fpredstone") and
    Player.Functions.GetItemByName("fpsugar") and
    Player.Functions.GetItemByName("fpblazepowder")
    if Item ~= nil and 
    Player.Functions.GetItemByName("fpfullbottle").amount >= 1 and 
    Player.Functions.GetItemByName("fpredstone").amount >= 5 and 
    Player.Functions.GetItemByName("fpsugar").amount >= 10 and 
    Player.Functions.GetItemByName("fpblazepowder").amount >= 9 then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('fp-potions:sever:hasItemsForMediumPotion', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Item = 
    Player.Functions.GetItemByName("fpfullbottle") and
    Player.Functions.GetItemByName("fpredstone") and
    Player.Functions.GetItemByName("fpsugar") and
    Player.Functions.GetItemByName("fpblazepowder")
    if Item ~= nil and 
    Player.Functions.GetItemByName("fpfullbottle").amount >= 1 and 
    Player.Functions.GetItemByName("fpredstone").amount >= 12 and 
    Player.Functions.GetItemByName("fpsugar").amount >= 20 and 
    Player.Functions.GetItemByName("fpblazepowder").amount >= 23 then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('fp-potions:sever:hasItemsForLargePotion', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Item = 
    Player.Functions.GetItemByName("fpfullbottle") and
    Player.Functions.GetItemByName("fpredstone") and
    Player.Functions.GetItemByName("fpsugar") and
    Player.Functions.GetItemByName("fpblazepowder") and
    Player.Functions.GetItemByName("fpspidereye") and
    Player.Functions.GetItemByName("fpglowdust")
    if Item ~= nil and 
    Player.Functions.GetItemByName("fpfullbottle").amount >= 1 and 
    Player.Functions.GetItemByName("fpredstone").amount >= 10 and 
    Player.Functions.GetItemByName("fpsugar").amount >= 23 and 
    Player.Functions.GetItemByName("fpblazepowder").amount >= 23 and 
    Player.Functions.GetItemByName("fpspidereye").amount >= 15 and 
    Player.Functions.GetItemByName("fpglowdust").amount >= 2 then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('fp-potions:sever:hasItemsForX-LargePotion', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Item = 
    Player.Functions.GetItemByName("fpfullbottle") and
    Player.Functions.GetItemByName("fpredstone") and
    Player.Functions.GetItemByName("fpsugar") and
    Player.Functions.GetItemByName("fpblazepowder") and
    Player.Functions.GetItemByName("fpspidereye") and
    Player.Functions.GetItemByName("fptear") and
    Player.Functions.GetItemByName("10") 
    if Item ~= nil and 
    Player.Functions.GetItemByName("fpfullbottle").amount >= 1 and 
    Player.Functions.GetItemByName("fpredstone").amount >= 19 and 
    Player.Functions.GetItemByName("fpsugar").amount >= 26 and 
    Player.Functions.GetItemByName("fpblazepowder").amount >= 18 and 
    Player.Functions.GetItemByName("fpspidereye").amount >= 15 and 
    Player.Functions.GetItemByName("fptear").amount >= 20 and 
    Player.Functions.GetItemByName("fpglowdust").amount >= 10 then
        cb(true)
    else
        cb(false)
    end
end)

-- Healing
    QBCore.Functions.CreateUseableItem('fphealingsmall', function(source) 
        Size = "Small"
        Type = "Healing"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fphealingsmall", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fphealingmed', function(source) 
        Size = "Med"
        Type = "Healing"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fphealingmed", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fphealinglarge', function(source) 
        Size = "Large"
        Type = "Healing"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fphealinglarge", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fphealingxlarge', function(source) 
        Size = "XLarge"
        Type = "Healing"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fphealingxlarge", 1)
    end) 

-- Night Vision
    QBCore.Functions.CreateUseableItem('fpnightvisionsmall', function(source) 
        Size = "Small"
        Type = "NightVision"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpnightvisionsmall", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpnightvisionmed', function(source) 
        Size = "Med"
        Type = "NightVision"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpnightvisionmed", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpnightvisionlarge', function(source) 
        Size = "Large"
        Type = "NightVision"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpnightvisionlarge", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpnightvisionxlarge', function(source) 
        Size = "XLarge"
        Type = "NightVision"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpnightvisionxlarge", 1)
    end) 

-- Armor
    QBCore.Functions.CreateUseableItem('fparmorsmall', function(source) 
        Size = "Small"
        Type = "Armour"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fparmorsmall", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fparmormed', function(source) 
        Size = "Med"
        Type = "Armour"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type)
        Player.Functions.RemoveItem("fparmormed", 1) 
    end) 

    QBCore.Functions.CreateUseableItem('fparmorlarge', function(source) 
        Size = "Large"
        Type = "Armour"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fparmorlarge", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fparmorxlarge', function(source) 
        Size = "XLarge"
        Type = "Armour"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fparmorxlarge", 1)
    end) 

-- Speed
    QBCore.Functions.CreateUseableItem('fpspeedsmall', function(source) 
        Size = "Small"
        Type = "Speed"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedsmall", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedmed', function(source) 
        Size = "Med"
        Type = "Speed"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedmed", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedlarge', function(source) 
        Size = "Large"
        Type = "Speed"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedlarge", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedxlarge', function(source) 
        Size = "XLarge"
        Type = "Speed"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedxlarge", 1)
    end) 

-- Swim
    QBCore.Functions.CreateUseableItem('fpspeedsmall', function(source) 
        Size = "Small"
        Type = "Swim"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedsmall", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedmed', function(source) 
        Size = "Med"
        Type = "Swim"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedmed", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedlarge', function(source) 
        Size = "Large"
        Type = "Swim"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedlarge", 1)
    end) 

    QBCore.Functions.CreateUseableItem('fpspeedxlarge', function(source) 
        Size = "XLarge"
        Type = "Swim"
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('fp-potion:client:startDrinkingPotion', source, Size, Type) 
        Player.Functions.RemoveItem("fpspeedxlarge", 1)
    end) 
