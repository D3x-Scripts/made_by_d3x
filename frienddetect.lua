local sys = loadstring(game:HttpGet("https://raw.githubusercontent.com/Deez-Nuts445/GHSandbox_LUA_1/main/notification.lua"))()
local plrs = game.Players
local lp = plrs.LocalPlayer

plrs.PlayerAdded:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
sys:notif("Your friend "..plr.Name.." has joined the game!",3)
end
end)

plrs.PlayerRemoving:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
sys:notif("Your friend "..plr.Name.." has left the game!",3)
end
end)

sys:notif("Friend Detector loaded!",2)
