local FileName = "Chat Logger 2.txt"

if not isfile(FileName) then
    syn_io_write(FileName, "Chat Logs")
end

function output(plr, msg)
    syn_io_append(FileName, "\r\n"..plr.Name..": "..msg)
end

local date_table = os.date("*t")
local hour = date_table.hour - 12
local minute = date_table.min

if hour < 12 then
	syn_io_append(FileName, "\n--------------------".."\n"..hour..":"..minute.." PM".."\r\n"..date_table.day.."/"..date_table.month.."/"..date_table.year.."\n--------------------")
else

syn_io_append(FileName, "\n--------------------".."\n"..hour..":"..minute.." AM".."\r\n"..date_table.day.."/"..date_table.month.."/"..date_table.year.."\n--------------------")
end

for i,v in pairs(game.Players:GetChildren()) do
	v.Chatted:Connect(function(msg)
		output(v, msg)
	end)
end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			output(plr, msg)
		end)
	end
end)
