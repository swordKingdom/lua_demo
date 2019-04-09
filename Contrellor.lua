--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/9
-- Time: 17:07
-- To change this template use File | Settings | File Templates.
--
--[[
--1.控制判断语句,if else语句
--以下示例输出:no
-- ]]
i = 0
y = 1
if i == 0 and y ==0 then
    print("yes")
elseif y == 1 then
    print("no")
else
    print("ss")
end


--[[
-- 2.while语句
--while condition do
-- statements;
--end;
-- ]]


--[[
-- 3.repeat-until语句
-- repeat
--      statements;
-- until conditions;
-- ]]






--[[
-- 4.for 循环
-- ]]
--(1)数值 for 循环
--for var=exp1,exp2,exp3 do
-- loop-part
--end
--(1)for 将用 exp3 作为 step 从 exp1（初始值）到 exp2（终止值），执行 loop-part。其中 exp3 可以省略，默认 step=1
for i=10,1,-1 do
    print(i)
end

--(2)控制变量 var 是局部变量自动被声明,并且只在循环内有效.
for i=1,10 do
    print(i)
end
max = i -- probably wrong! 'i' here is global

--(3)范式for循环
--输出：
--  y	0
--  x	hehe
table = {x="hehe",y="0"}
for i,v in pairs(table)
do
    print(i,v)
end


--[[
-- 5.break 和 return 语句
--break 语句用来退出当前循环（for、repeat、while）。在循环外部不可以使用。
--return 用来从函数返回结果，当一个函数自然结束时，结尾会有一个默认的 return。
-- ]]
a ={"hhh","2" }
v = "hhh"
local i = 1
while a[i] do
    if a[i] == v then
        print(i) --> 1
        break
    end
    i = i + 1
end

function foo ()
        return
end