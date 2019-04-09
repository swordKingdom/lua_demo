--[[
-- 元数据table的使用
-- --]]
local table1 = { bar ="data1"}
local table2 = { bar="data2" }
local metaTable = setmetatable(table1,{__index = table2})
print(metaTable.bar)
print(metaTable.bar)

