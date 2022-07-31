local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("XClicker", "DarkTheme")

-- tabs
local Tab1 = Window:NewTab("Clicker")
local Tab2 = Window:NewTab("Auto")
local Tab3 = Window:NewTab("Player")
-- Sections

local autoclicker = Tab1:NewSection("Clicker")
local autobeast = Tab1:NewSection("AutoBeast")
local rebirths = Tab2:NewSection("Rebirths")
local eggs = Tab2:NewSection("Eggs")
local autokill = Tab2:NewSection("Auto Kill")
local teleport = Tab3:NewSection("Teleports")

-- etc
autoclicker:NewSlider("Combo", "Changes Combo Value", 10, 1, function(value) -- 500 (MaxValue) | 0 (MinValue)
    ComboNum = (value)
end)

autoclicker:NewToggle("ToggleText", "ToggleInfo", function(state)
        if state == true then
        autoclicker = true
    while autoclicker == true do
        _G.ComboNum = 1
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(ComboNum)
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(ComboNum)
        wait()
    end
        else
        autoclicker = false
    end
end)


rebirths:NewToggle("Auto Buy Rebirths", "Loops rebirth buy remote", function(state)
    if state == true then
        rebirths = true
    while rebirths == true do
        local rebirthcount = 1000000000
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(rebirthcount)
      wait()
    end
        else
        rebirths = false
    end
end)

autobeast:NewToggle("Autobeast", "loops beast remote", function(state)
    if state == true then
        autobeast = true
        while autobeast == true do
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.BeastModeService.Begin:FireServer()
            wait()
        end
    else
        autobeast = false
    end
end)

eggs:NewDropdown("AutoBuy Eggs", "AutoBuys Eggs For You", {"None", "Basic", "Lava", "Desert", "Ocean", "Winter", "Toxic", "Candy", "Forest", "Storm", "Blocky", "Space", "Dominus", "Infinity", "Future", "City", "Moon", "Fire"}, function(currentOption)
    if currentOption == "None" then
        _G.autobasic = false
        _G.autolava = false
        _G.autodesert = false
        _G.autoocean = false
        _G.autowinter = false
        _G.autotoxic = false
        _G.autocandy = false
        _G.autoforest = false
        _G.autostorm = false
        _G.autoblocky = false
        _G.autospace = false
        _G.autodominus = false
        _G.autoinfinity = false
        _G.autofuture = false
        _G.autocity = false
        _G.automoon = false
        _G.autofire = false
    end

    if currentOption == "Basic" then
        _G.autobasic = true
        while currentOption == "Basic" and _G.autobasic == true do
            local ohString1 = "basic"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Lava" then
        _G.autolava = true
        while currentOption == "Lava" and _G.autolava == true do
            local ohString1 = "lava"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Desert" then
        _G.autodesert = true
        while currentOption == "Desert" and _G.autodesert == true do
            local ohString1 = "desert"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Ocean" then
        _G.autoocean = true
        while currentOption == "Ocean" and _G.autoocean == true do
            local ohString1 = "ocean"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Winter" then
        _G.autowinter = true
        while currentOption == "Winter" and _G.autowinter == true do
            local ohString1 = "winter"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Toxic" then
        _G.autotoxic = true
        while currentOption == "Toxic" and _G.autotoxic == true do
            local ohString1 = "toxic"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Candy" then
        _G.autocandy = true
        while currentOption == "Candy" and _G.autocandy == true do
            local ohString1 = "candy"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Forest" then
        _G.autoforest = true
        while currentOption == "Forest" and _G.autoforest == true do
            local ohString1 = "forest"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Storm" then
        _G.autostorm = true
        while currentOption == "Storm" and _G.autostorm == true do
            local ohString1 = "storm"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Blocky" then
        _G.autoblocky = true
        while currentOption == "Blocky" and _G.autoblocky == true do
            local ohString1 = "blocky"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Space" then
        _G.autospace = true
        while currentOption == "Space" and _G.autospace == true do
            local ohString1 = "space"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Dominus" then
        _G.autodominus = true
        while currentOption == "Dominus" and _G.autodominus == true do
            local ohString1 = "dominus"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Infinity" then
        _G.autoinfinity = true
        while currentOption == "Forest" and _G.autoinfinity == true do
            local ohString1 = "infinity"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Future" then
        _G.autofuture = true
        while currentOption == "Future" and _G.autofuture == true do
            local ohString1 = "future"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "City" then
        _G.autocity = true
        while currentOption == "City" and _G.autocity == true do
            local ohString1 = "City"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Moon" then
        _G.automoon = true
        while currentOption == "Moon" and _G.automoon == true do
            local ohString1 = "moon"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
    if currentOption == "Fire" then
        _G.autofire = true
        while currentOption == "Fire" and _G.autofire == true do
            local ohString1 = "fire"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(ohString1)
            wait()
        end
    end
end)

autokill:NewToggle("Kill Bunny", "Absolutely Demolishes the bunny", function(state)
    if state == true then
        _G.autokillbunny = true
        while _G.autokillbunny == true do
            local ohString1 = "Easter Bunny"
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer(ohString1)
            wait()
        end
    else
        _G.autokillbunny = false
    end
end)
