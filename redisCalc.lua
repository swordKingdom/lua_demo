local _convertTable = {
    [0] = "0",
    [1] = "1",
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
    [7] = "7",
    [8] = "8",
    [9] = "9",
    [10] = "A",
    [11] = "B",
    [12] = "C",
    [13] = "D",
    [14] = "E",
    [15] = "F",
    [16] = "G",
}

local data = redis.call("keys","*")
local result= 0
for k,v in pairs(data) do 
    local text = redis.call("get",v)
    local x= 10 
    local x_t = {}
    local len = string.len(text)
    local index = len
    while ( index > 0) do
        local char = string.sub(text, index, index)
	local tmp = 0
	for k, v in pairs(_convertTable) do
          if v == char then
            tmp = k
	  end
        end
        x_t[#x_t + 1] = tmp
        index = index - 1
    end
    local num = 0
    for k, v in ipairs(x_t) do
        num = num + v * math.pow(x, k - 1) 
    end
    result = result + num
end	
return result
