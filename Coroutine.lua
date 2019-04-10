--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/10
-- Time: 14:32
-- To change this template use File | Settings | File Templates.
--

--[[
-- 1.协同程序，执行coroutine.create(函数)
--协同有三个状态：挂起态（suspended）、运行态（running）、停止态（dead）。
 ]]
co = coroutine.create(function ()
    print("hi")
end)

print(co) -->thread: 线程编号

--(1)查看协同程序的状态
print(coroutine.status(co)) -->suspended
--(2)协同程序挂起
coroutine.resume(co)
print(coroutine.status(co)) -->dead