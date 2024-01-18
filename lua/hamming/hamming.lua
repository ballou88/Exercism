local Hamming = {}

function Hamming.compute(strand_1, strand_2)
	if #strand_1 ~= #strand_2 then
		return -1
	end
	local count = 0
	for i = 1, #strand_1 do
		if strand_1:sub(i, i) ~= strand_2:sub(i, i) then
			count = count + 1
		end
	end
	return count
end

return Hamming
