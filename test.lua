-- ============================================================
-- WISNU UI TEST
-- ============================================================

local WisnuLib = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/WisnuX67/Wisnu-ui/main/source.lua"
))()

if not WisnuLib then
    warn("[Test] Wisnu UI gagal load")
    return
end

print("[Test] Wisnu UI loaded OK")

local Window = WisnuLib:CreateWindow({
    Title       = "Wisnu UI Test",
    Description = "Testing v1.0",
    TabWidth    = 110,
    Keybind     = Enum.KeyCode.RightShift,
})

local Tab1 = Window:CreateTab({ Name = "Tab 1" })
local Tab2 = Window:CreateTab({ Name = "Tab 2" })

-- Section 1
local sec1 = Tab1:AddSection("Buttons")
sec1:AddButton({ Title = "Click Me", Callback = function()
    print("[Test] Button clicked")
    WisnuLib:SetNotification({ Content = "Button clicked!", Delay = 2 })
end })

sec1:AddButton({ Title = "Notify Test", Callback = function()
    WisnuLib:SetNotification({ Content = "Hello dari Wisnu UI!", Delay = 3 })
end })

-- Section 2
local sec2 = Tab1:AddSection("Toggles & Sliders")
sec2:AddToggle({ Title = "Test Toggle", Default = false, Callback = function(v)
    print("[Test] Toggle:", v)
end })

sec2:AddSlider({ Title = "Test Slider", Min = 0, Max = 100, Default = 50, Increment = 1,
    Callback = function(v)
        print("[Test] Slider:", v)
    end })

sec2:AddInput({ Title = "Test Input", Default = "", Callback = function(v)
    print("[Test] Input:", v)
end })

-- Section 3
local sec3 = Tab1:AddSection("Dropdown")
sec3:AddDropdown({ Title = "Test Dropdown", Options = {"Option A","Option B","Option C"}, Default = "Option A",
    Callback = function(v)
        print("[Test] Dropdown:", v)
    end })

-- Tab 2
local sec4 = Tab2:AddSection("Tab 2 Test")
sec4:AddButton({ Title = "Tab 2 Button", Callback = function()
    print("[Test] Tab 2 button!")
end })

print("[Test] UI built OK")
