-- WISNU UI STANDALONE TEST
-- Tujuan: test apakah UI itu sendiri yang bikin BAC
-- Tidak ada game script, tidak ada require, tidak ada hookfunction

local WisnuLib = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/WisnuX67/Wisnu-ui/main/source.lua"
))()

if not WisnuLib then
    warn("[Test] UI gagal load")
    return
end

print("[Test] UI loaded OK -- kalau BAC berarti dari UI")

local Window = WisnuLib:CreateWindow({
    Title       = "Wisnu UI Test",
    Description = "BAC Test",
    TabWidth    = 110,
    Keybind     = Enum.KeyCode.RightShift,
})

local Tab = Window:CreateTab({ Name = "Test" })
local Sec = Tab:AddSection("Section 1")

Sec:AddButton({ Title = "Test Button", Callback = function()
    WisnuLib:SetNotification({ Content = "Button works!", Delay = 2 })
end })

Sec:AddToggle({ Title = "Test Toggle", Default = false, Callback = function(v)
    print("Toggle:", v)
end })

Sec:AddSlider({ Title = "Test Slider", Min = 0, Max = 100, Default = 50, Increment = 1,
    Callback = function(v)
        print("Slider:", v)
    end })

print("[Test] DONE -- kalau ini gk BAC berarti UI aman, BAC dari game script")
