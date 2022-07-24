-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Crazy Hub Rewrite", 5013109572)
local playertp = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local page2 = venyx:addPage("Teleports", 5012544693)
local section1 = page:addSection("Auto Farm")
local section2 = page2:addSection("Psychic Teleports")
local section3 = page2:addSection("Fist Teleports")
local section4 = page2:addSection("Body Teleports")
local Replicated = game:GetService("ReplicatedStorage")

venyx:Notify("Thank you for using Crazy Hub","Developed by Pastebin#8616")

section1:addToggle("Body Toughness", nil, function(value)
while value == true do
     wait(0.5)
local args = {
   [1] = {
       [1] = "+BT1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
    end
end)
section1:addToggle("Psychic Power (Cannot run at the same time as others)", nil, function(value)
while value == true do
     wait(2)
local args = {
   [1] = {
       [1] = "+PP1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
    end
end)
section1:addToggle("Jump Power", nil, function(value)
while value == true do
     wait(0.5)
local args = {
   [1] = {
       [1] = "+JF1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
    end
end)
section1:addToggle("Movement Speed", nil, function(value)
while value == true do
     wait(0.5)
local args = {
   [1] = {
       [1] = "+MS1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
    end
end)
section1:addToggle("Fist Strength", nil, function(value)
while value == true do
     wait(0.5)
local args = {
   [1] = {
       [1] = "+FS1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
    end
end)
section2:addButton("First Lawn (1M+ Psychic)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.PPTrainingPart1.CFrame

end)
section2:addButton("Second Lawn (1B+ Psychic)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.PPTrainingPart2.CFrame

end)
section2:addButton("Bridge (1T+ Psychic)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.PPTrainingPart3.CFrame

end)
section2:addButton("Waterfall (1Qa+ Psychic)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2550.30957, 5399.77197, -496.424225)

end)
section3:addButton("Rock (0+ Fist)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingRock.CFrame

end)
section3:addButton("Crystal (Unknown Fist Requirements)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingCrystal.Part.CFrame

end)
section3:addButton("Blue God Star (1B+ Fist)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.StarFSTraining1.CFrame

end)
section3:addButton("Green God Star (100B+ Fist)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.StarFSTraining2.CFrame

end)
section3:addButton("Red God Star (10T+ Fist)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.StarFSTraining3.CollisionPart.CFrame

end)
section4:addButton("Ice Bath (100+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.ColdBath.Water.CFrame

end)
section4:addButton("Fire Bath (10K+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.FireBath.FirePart.CFrame

end)
section4:addButton("Iceberg (100K+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.IceMountain.LightPart.CFrame

end)
section4:addButton("Tornado (1M+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.Tornado.Tornado.CFrame

end)
section4:addButton("Volcano (10M+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.Volcano.Lava.LavaPart.CFrame

end)
section4:addButton("Hellfire Pit (1B+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.GreenFirePart.CFrame

end)
section4:addButton("Green Acid Pool (100B+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.AcidPart.CFrame

end)
section4:addButton("Red Acid Pool (10T+ Body Toughness)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Main.TrainingArea.LavaPart2.CFrame

end)
-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
