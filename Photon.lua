local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Photon",

    Model = "https://github.com/Ilikerobloxdoors/Photon/blob/main/Photon.rbxm",

    Speed = 700,
    DelayTime = 5,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.5,
    },

    Cycles = {
        Min = 7,
        Max = 15,
        WaitTime = 0.2,
    },

    CamShake = {
        true,
        {1.5, 20, 1.2, 2.5},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "http://www.roblox.com/asset/?id=15002669257",
            Image2 = "rbxassetid://11287256498",

            Shake = true,

            -- No sound
            Sound1 = {
                0,
                {Volume = 0},
            },

            Sound2 = {
                0,
                {Volume = 0},
            },

            Flashing = {
                true,
                Color3.fromRGB(3, 44, 230),
            },

            Tease = {
                true,
                Min = 6,
                Max = 9,
            },
        },
    },

    CustomDialog = {
        "You died to Photon..."
    },
})

-- Debug callbacks
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Photon has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Photon has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Photon has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Photon has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Photon entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Photon")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Photon.")
end

Creator.runEntity(entity)
