-- ============================================================
-- WISNU HUB LOADER
-- Detect game → load script yang sesuai
-- ============================================================

local PlaceId = game.PlaceId

local Games = {
    -- [PlaceId] = "raw url script"
    [2534374796] = "https://raw.githubusercontent.com/WisnuX67/Wisnu-ui/main/sae.lua",   -- Steal an Egg
    -- tambah game lain di sini:
    -- [12345678] = "https://raw.githubusercontent.com/.../game2.lua",
}

local function load(url)
    local ok, err = pcall(function()
        local src = game:HttpGet(url)
        assert(src and #src > 0, "empty response")
        local fn, compileErr = loadstring(src)
        assert(fn, "compile error: " .. tostring(compileErr))
        fn()
    end)
    if not ok then
        warn("[WisnuHub] Failed to load: " .. tostring(err))
    end
end

local url = Games[PlaceId]
if url then
    print("[WisnuHub] Loading for PlaceId:", PlaceId)
    load(url)
else
    -- Fallback: tampilkan PlaceId biar gampang tambah
    warn("[WisnuHub] Game not supported. PlaceId = " .. tostring(PlaceId))
end
