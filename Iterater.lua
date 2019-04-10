--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/10
-- Time: 10:27
-- To change this template use File | Settings | File Templates.
--

--[[
--1.迭代器和闭包
 ]]

function list_iter (t,n)
    local i = 0
    return function ()
        i = i + 1
        if i <= n then
            return t[i]
        else
            return nil
        end
    end
end
t = {"10","20","30"}
iter = list_iter(t,3) -- creates the iterator
while true do
    local element = iter() -- calls the iterator
    if element == nil then break end
    print(element)
end



--[[
--2.范性for的语义
--for var_1, ..., var_n in explist do block end
--等价于
-- do
--local _f, _s, _var = explist
--while true do
-- local var_1, ... , var_n = _f(_s, _var)
-- _var = var_1
-- if _var == nil then break end
-- block
--end
--end
 ]]
for line in io.lines() do
    io.write(line, '\n')
    if line == "exist" then
        break
    end
end


--[[
-- 3.多状态的迭代器
 ]]
local iterator -- to be defined later

function allwords()
    local state = {line = io.read(), pos = 1}
    return iterator, state
end

function iterator (state)
    while state.line do -- repeat while there are lines
        -- search for next word
        local s, e = string.find(state.line, "%w+", state.pos)
        if s then -- found a word?
            -- update next position (after this word)
            state.pos = e + 1
            return string.sub(state.line, s, e)
        else -- word not found
            state.line = io.read() -- try next line...
            state.pos = 1 -- ... from first position
        end
    end
    return nil -- no more lines: end loop
end

--[[
--4.真正的迭代器
 ]]
function allwords (f)
    -- repeat for each line in the file
    for l in io.lines() do
        -- repeat for each word in the line
        for w in string.gfind(l, "%w+") do
            -- call the function
            f(w)
        end
    end
end
allwords(print)