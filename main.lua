
if game.PlaceId == '8571687919' then
	print("Game supported")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Pastebin184/-CrazyHub/main/unofficial.lua"))()
else if game.PlaceId == '1' then
	print("game supported")
else 
    game.Players.LocalPlayer:Kick("Game not supported")
end
end
