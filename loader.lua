local games = {
    -- Steal An Egg
    [10563114921]     = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    [107778070777162] = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/StealAnEgg.lua",
    -- Violence District
    [6739698191]      = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/ViolenceDistrict.lua",
    [93978595733734]  = "https://raw.githubusercontent.com/WisnuX67/WisnuX/main/ViolenceDistrict.lua",
}

local function httpGet(url)
    if game.HttpGet then
        return game:HttpGet(url)
    elseif syn and syn.request then
        return syn.request({Url=url, Method="GET"}).Body
    elseif http and http.request then
        return http.request({Url=url, Method="GET"}).Body
    elseif request then
        return request({Url=url, Method="GET"}).Body
    else
        return game:GetService("HttpService"):GetAsync(url)
    end
end

local scriptURL = games[game.GameId] or games[game.PlaceId]

if scriptURL then
    print("[WisnuX] Loading GameId=" .. tostring(game.GameId))
    local ok, src = pcall(httpGet, scriptURL)
    if not ok then warn("[WisnuX] HttpGet failed: " .. tostring(src)); return end
    local fn = loadstring or load
    if fn then fn(src)()
    else warn("[WisnuX] loadstring not available") end
else
    warn("[WisnuX] Game not supported. GameId=" .. tostring(game.GameId) .. " PlaceId=" .. tostring(game.PlaceId))
end
