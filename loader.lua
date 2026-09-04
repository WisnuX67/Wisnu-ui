local games = {
    -- Steal An Egg
    [10563114921]     = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    [107778070777162] = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    -- Violence District
    [6739698191]      = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/ViolenceDistrict.lua",
    [93978595733734]  = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/ViolenceDistrict.lua",
    -- tambah game lain di sini
}

local scriptURL = games[game.GameId] or games[game.PlaceId]

if scriptURL then
    print("[WisnuX] Loading for GameId=" .. tostring(game.GameId))
    loadstring(game:HttpGet(scriptURL))()
else
    warn("[WisnuX] Game not supported. GameId=" .. tostring(game.GameId) .. " PlaceId=" .. tostring(game.PlaceId))
end
