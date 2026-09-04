local games = {
    -- [UniverseId atau PlaceId] = "url script"
    -- SAE
    [10563114921]     = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    [107778070777162] = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    -- tambah game lain di sini
}

local scriptURL = games[game.GameId] or games[game.PlaceId]

if scriptURL then
    print("[WisnuX] Loading for:", game.GameId, "/", game.PlaceId)
    loadstring(game:HttpGet(scriptURL))()
else
    warn("[WisnuX] Game not supported. GameId=" .. tostring(game.GameId) .. " PlaceId=" .. tostring(game.PlaceId))
end
