local module = {}
function module.gettime()
local fmt = {}
local hour = os.date("*t")["hour"]
local mint = os.date("*t")["min"]
local secs = os.date("*t")["sec"]
local pl1
local pl2
local pl3
local pl4
-- change to 0, with pm/am switching
if hour >= 10 then
pl1 = "0"..hour - 10
pl4 = 'PM'
end
if mint <= 9 then
pl2 = "0"..mint
end
if secs <= 9 then
pl3 = "0"..secs
else
pl3 = secs
end
function fmt:format(str)
local str = str
:gsub("#H",pl1)
:gsub("#M",pl2)
:gsub("#S",pl3)
:gsub("#P",pl4)
return str
end   
return fmt  
end 
return module
