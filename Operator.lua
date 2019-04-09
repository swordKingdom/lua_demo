--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/9
-- Time: 15:36
-- To change this template use File | Settings | File Templates.
--

--[[
-- 1.逻辑运算符:or(或) / and(且) /not(非)
--
 ]]
print(4 and 5) --> 5
print(nil and 13) --> nil
print(false and 13) --> false
print(4 or 5) --> 4
print(false or 5) --> 5


--[[
-- 2.连接符号，用于连接字符串： ..
 ]]
print("hello ".."you")  -->hello you


--[[
--3.表构造器,不管用何种方式创建 table，我们都可以向表中添加或者删除任何类型的域，构造函
--数仅仅影响表的初始化。
 ]]
-- (1)基础定义以及访问
days = {"Sunday", "Monday", "Tuesday", "Wednesday",
    "Thursday", "Friday", "Saturday"}
print(days[4])  -->Wednesday

--(2)访问和删除table中的元素
w = {x=0, y=0, label="console"}
x = {math.sin(0), math.sin(1), math.sin(2)}
w[1] = "another field"
x.f = w
print(w["x"]) --> 0
print(w[1]) --> another field
print(x.f[1]) --> another field
w.x = nil -- remove field "x"

--(3)每次调用构造函数，Lua 都会创建一个新的 table，可以使用 table 构造一个 list：

list = nil
for i=1,10 do
    list =  {next=list, value=i}
end
l = list
--输出:1-10
while l do
    print(l.value)
    l = l.next
end

