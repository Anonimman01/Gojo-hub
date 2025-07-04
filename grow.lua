local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/water"))()

local oceanColor = Color3.fromRGB(0, 155, 180)

local Window = Library:CreateWindow("🌊 Gojo GrowHub") local Main = Window:CreateFolder("Grow Garden Menu")

pcall(function() Library.theme.Background = oceanColor Library.theme.TextColor = Color3.fromRGB(255, 255, 255) Library.theme.ButtonColor = Color3.fromRGB(0, 100, 120) end)

Main:Button("🌍 Телепорт ко всем зонам", function() local zones = workspace.Zones:GetChildren() for _,zone in pairs(zones) do game.Players.LocalPlayer.Character:MoveTo(zone.Position) wait(1) end end)

Main:Toggle("🌱 Авто-выращивание + сбор", function(val) getgenv().autoGrow = val while getgenv().autoGrow do wait(0.5) pcall(function() game:GetService("ReplicatedStorage").Events.Water:FireServer() game:GetService("ReplicatedStorage").Events.Harvest:FireServer() end) end end)

Main:Button("🎉 Ивент авто-прохождение", function() pcall(function() game:GetService("ReplicatedStorage").Events.EventComplete:FireServer() end) end)

Main:Button("🛒 Купить редкие семена", function() game:GetService("ReplicatedStorage").Events.BuySeed:FireServer("Rare") end)

Main:Button("🛒 Купить легендарные семена", function() game:GetService("ReplicatedStorage").Events.BuySeed:FireServer("Legendary") end)

Main:Button("❌ Закрыть меню", function() Library:Destroy() end)


