local FileName = "Chat Logger 2.txt" --Name of the file

if not isfile(FileName) then
    syn_io_write(FileName, "Chat Logs")
end --Check if the file exists if it doesn't, then it creates one.

function output(plr, msg)
    syn_io_append(FileName, "\r\n"..plr.Name..": "..msg)
end --Writes to file of the player and message when the function is called.

local date_table = os.date("*t") --Local Time
local hour = date_table.hour - 12
local minute = date_table.min

if hour < 12 then
	syn_io_append(FileName, "\n--------------------".."\n"..hour..":"..minute.." PM".."\r\n"..date_table.day.."/"..date_table.month.."/"..date_table.year.."\n--------------------")
else

syn_io_append(FileName, "\n--------------------".."\n"..hour..":"..minute.." AM".."\r\n"..date_table.day.."/"..date_table.month.."/"..date_table.year.."\n--------------------")
end --Creates a date log of when the chat began. Also checks if the time was PM or AM.

for i,v in pairs(game.Players:GetChildren()) do
	v.Chatted:Connect(function(msg)
		output(v, msg) --Call function if player chatted.
	end)
end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			output(plr, msg) -- Same thing essentially. :/
		end)
	end
end)
