local sys = loadstring(game:HttpGet("https://raw.githubusercontent.com/Deez-Nuts445/GHSandbox_LUA_1/main/notification.lua"))()
local plrs = game.Players
local lp = plrs.LocalPlayer
function postMsg(col: Color3,font: Enum,size: Number,text: Value)
local properties = {
    Color = col;
    Font = font;
    TextSize = size;
    Text = text
}
game.StarterGui:SetCore("ChatMakeSystemMessage", properties)
end

plrs.PlayerAdded:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
            sys:notif("Your friend "..plr.Name.." has joined the game!",3)
end
end)

plrs.PlayerRemoving:Connect(function(plr)
if plr:IsFriendsWith(lp.UserId) then
postMsg(Color3.new(1,1,0),Enum.Font.SourceSansItalic,16,"Your friend "..plr.Name.." has left the game!")
sys:notif("Your friend "..plr.Name.." has left the game!",3)

end
end)
postMsg(Color3.new(1,1,0),Enum.Font.SourceSansItalic,16,"[D3x Utils']: Friend Detector loaded!")
sys:notif("Friend Detector loaded!",2)
