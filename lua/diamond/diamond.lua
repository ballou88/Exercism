local min = string.byte("A")

local function line(width, linenum, letter)
	local string = ""
	local midpoint = math.floor(width / 2) + 1
	for i = 1, width do
		if i == (midpoint - linenum + 1) or i == (midpoint + linenum - 1) then
			string = string .. letter
		else
			string = string .. " "
		end
	end
	return string .. "\n"
end

return function(letter)
	local max = letter:byte()
	local string = ""
	local width = 2 * (max - min) + 1
	for i = min, max do
		string = string .. line(width, min - i + 1, string.char(i))
	end
	for i = max - 1, min, -1 do
		string = string .. line(width, min - i + 1, string.char(i))
	end
	return string
end
string.find
