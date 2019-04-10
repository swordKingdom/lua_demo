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
--(2)协同程序由挂起状态变为运行态
coroutine.resume(co)
print(coroutine.status(co)) -->dead
--(3)运行态转挂起
co = coroutine.create(function ()
    for i=1,10 do
        print("co", i)
        coroutine.yield()
    end
end)
coroutine.resume(co) --> co 1
print(coroutine.status(co)) --> suspended

--Lua的协同称为不对称协同（asymmetric coroutines），指“挂起一个正在执行的协同函数”
--与“使一个被挂起的协同再次执行的函数”是不同的，有些语言提供对称协同（symmetric
--coroutines），即使用同一个函数负责“执行与挂起间的状态切换”
