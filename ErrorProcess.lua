--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/10
-- Time: 14:03
-- To change this template use File | Settings | File Templates.
--



--[[
-- 1.断言
--assert 首先检查第一个参数，若没问题，assert 不做任何事情；否则，assert 以第二
--个参数作为错误信息抛出。第二个参数是可选的。注意，assert 会首先处理两个参数，
--然后才调用函数，所以下面代码，无论 n 是否为数字，字符串连接操作总会执行：
 ]]--
assert(tonumber("a"),"execute error")
--输出：lua53.exe: ErrorProcess.lua:17: execute error


--[[
-- 2.异常处理，pcall(在保护状态下执行)下执行函数内容，同时捕获所有的异常和错误。
--若一切正常，pcall 返回 true 以及“被执行函数”的返回值；否则返回 nil 和错误信息。
 ]]--
local status, err = pcall(function () error({code=121}) end)
print(err.code) --> 121