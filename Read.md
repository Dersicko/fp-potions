## In QBCore/Server/player.lua
Search For `PlayerData.metadata = PlayerData.metadata or {}` right under this line add

    PlayerData.metadata['potionrep'] = PlayerData.metadata['potionrep'] or 0


## QBCore/shared/items.lua
```

	["fpblazepowder"]                = {["name"] = "fpblazepowder",                 ["label"] = "Blaze Powder",             ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpblazepowder.png",         ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fpredstone"]                   = {["name"] = "fpredstone",                    ["label"] = "Redstone",                 ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpredstone.png",            ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fpspidereye']                  = {['name'] = 'fpspidereye',                   ['label'] = 'Spider Eye',               ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpspidereye.png',           ['unique'] = false,     ['useable'] = false,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fpsugar"]                      = {["name"] = "fpsugar",                       ["label"] = "Sugar",                    ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpsugar.png",               ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fptear"]                       = {["name"] = "fptear",                        ["label"] = "Ghast Eye",                ["weight"] = 100,       ["type"] = "item",      ["image"] = "fptear.png",                ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fpglowdust']                   = {['name'] = 'fpglowdust',                    ['label'] = 'Glowdust',                 ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpglowdust.png',            ['unique'] = false,     ['useable'] = false,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},

	['fpemptybottle']                = {['name'] = 'fpemptybottle',                 ['label'] = 'Empty Bottle',             ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpemptybottle.png',         ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	['fpfullbottle']                 = {['name'] = 'fpfullbottle',                  ['label'] = 'Full Bottle',              ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpfullwaterbottle.png',     ['unique'] = false,     ['useable'] = false,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	-- Healing
	["fphealingsmall"]               = {["name"] = "fphealingsmall",                ["label"] = "Small Healing Potion",     ["weight"] = 100,       ["type"] = "item",      ["image"] = "fphealing.png",         	 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fphealingmed"]                 = {["name"] = "fphealingmed",					["label"] = "Medium Healing Potion",    ["weight"] = 100,       ["type"] = "item",      ["image"] = "fphealing.png",             ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fphealinglarge']               = {['name'] = 'fphealinglarge',                ['label'] = 'Large Healing Potion',     ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fphealing.png',           	 ['unique'] = false,     ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fphealingxlarge"]              = {["name"] = "fphealingxlarge",               ["label"] = "X-Large Healing Potion",   ["weight"] = 100,       ["type"] = "item",      ["image"] = "fphealing.png",             ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	-- Swim
	["fpswimsmall"]                  = {["name"] = "fpswimsmall",                   ["label"] = "Small Swim Potion",        ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpswim.png",         		 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fpswimmed"]                    = {["name"] = "fpswimmed",                     ["label"] = "Medium Swim Potion",       ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpswim.png",            	 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fpswimlarge']                  = {['name'] = 'fpswimlarge',                   ['label'] = 'Large Swim Potion',        ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpswim.png',           	 ['unique'] = false,     ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fpswimxlarge"]                 = {["name"] = "fpswimxlarge",                  ["label"] = "X-Large Swim Potion",      ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpswim.png",                ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	-- Armor
	["fparmorsmall"]                 = {["name"] = "fparmorsmall",                  ["label"] = "Small Armor Potion",       ["weight"] = 100,       ["type"] = "item",      ["image"] = "fparmor.png",				 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fparmormed"]                   = {["name"] = "fparmormed",                    ["label"] = "Medium Armor Potion",      ["weight"] = 100,       ["type"] = "item",      ["image"] = "fparmor.png",            	 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fparmorlarge']                 = {['name'] = 'fparmorlarge',                  ['label'] = 'Large Armor Potion',       ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fparmor.png',           	 ['unique'] = false,     ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fparmorxlarge"]                = {["name"] = "fparmorxlarge",                 ["label"] = "X-Large Armor Potion",     ["weight"] = 100,       ["type"] = "item",      ["image"] = "fparmor.png",               ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	-- Night Vision
	["fpnightvisionsmall"]           = {["name"] = "fpnightvisionsmall",            ["label"] = "Small Night Vision Potion",["weight"] = 100,       ["type"] = "item",      ["image"] = "fpnightvision.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fpnightvisionmed"]             = {["name"] = "fpnightvisionmed",              ["label"] = "Medium Night Vision Potion",["weight"] = 100,       ["type"] = "item",      ["image"] = "fpnightvision.png",        ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fpnightvisionlarge']           = {['name'] = 'fpnightvisionlarge',            ['label'] = 'Large Night Vision Potion',['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpnightvision.png',         ['unique'] = false,     ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fpnightvisionxlarge"]          = {["name"] = "fpnightvisionxlarge",           ["label"] = "X-Large Night Vision Potion",["weight"] = 100,       ["type"] = "item",      ["image"] = "fpnightvision.png",       ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	-- Speed
	["fpspeedsmall"]                 = {["name"] = "fpspeedsmall",                  ["label"] = "Small Speed Potion",       ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpspeed.png",          	 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["fpspeedmed"]                   = {["name"] = "fpspeedmed",                    ["label"] = "Medium Speed Potion",      ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpspeed.png",            	 ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['fpspeedlarge']                 = {['name'] = 'fpspeedlarge',                  ['label'] = 'Large Speed Potion',       ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'fpspeed.png',           	 ['unique'] = false,     ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
	["fpspeedxlarge"]                = {["name"] = "fpspeedxlarge",                 ["label"] = "X-Large Speed Potion",     ["weight"] = 100,       ["type"] = "item",      ["image"] = "fpspeed.png",               ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

## Add This To dpemotes
```

   ["fppotion"] = {"mp_player_intdrink", "loop_bottle", "FP-Potion", AnimationOptions =
   {
        Prop = "ng_proc_brkbottle_02a",
        PropBone = 18905,
        PropPlacement = {0.2, -0.0008, 0.503, 240.0, 10.0, 0.0},
        --PropPlacement = {0.0, 0.0, 0.0, 0.03, 0.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
   }},
   
```