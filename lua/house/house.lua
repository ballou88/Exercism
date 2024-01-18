local house = {}
local lines = {
	"horse and the hound and the horn\nthat belonged to",
	"farmer sowing his corn\nthat kept",
	"rooster that crowed in the morn\nthat woke",
	"priest all shaven and shorn\nthat married",
	"man all tattered and torn\nthat kissed",
	"maiden all forlorn\nthat milked",
	"cow with the crumpled horn\nthat tossed",
	"dog\nthat worried",
	"cat\nthat killed",
	"rat\nthat ate",
	"malt\nthat lay in",
	"house that Jack built",
}

house.verse = function(num)
	return "This is the " .. table.concat(lines, " the ", #lines - num + 1, #lines) .. "."
end

house.recite = function()
	local poem = house.verse(1)
	for i = 2, 12 do
		poem = poem .. "\n" .. house.verse(i)
	end
	return poem
end

return house
