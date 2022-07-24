local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Crazy Hub Rewrite", 5013109572)




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
local section1 = page:addSection("Main scripts")

venyx:Notify("Detected Game: ","UNOfficial")
wait(3)
venyx:Notify("Thank you for using Crazy Hub","Created and Developed by Pastebin#8616")

section1:addToggle("Auto Call Official", nil, function(value)
while value == true do
    wait(0.01)
        game:GetService("ReplicatedStorage").Remotes.CallOfficial:FireServer()
            wait(0.01)
    end
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pastebin184/-CrazyHub/main/pain.lua"))() 
