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

--(3)每次调用构造函数，Lua 都会创建一个新的 table，可以使用 table 构造一个 list，以下例子生成如链表一样的东西
list = nil
for i=1,10 do
    list =  {next=list, value=i}
end
l = list
--输出:1-10,
while l do
    print(l.value)
    l = l.next
end

--(4)table嵌套结构的访问,你不能使用负索引初始化一个表中元素，字符串索引也不能被恰当的表示
polyline = {color="blue", thickness=2, npoints=4,
    {x=0, y=0},
    {x=-10, y=0},
    {x=-10, y=1},
    {x=0, y=1}
}
print(polyline[2].x) --> -10
print(polyline[2].y) --> 0


-- (5)使用[expression]显示的表示将被初始化的索引，不推荐数组下标从 0 开始，否则很多标准库不能使用。
opnames = {["+"] = "add", ["-"] = "sub",
    ["*"] = "mul", ["/"] = "div"}
i = 20; s = "-"
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s}
print(opnames[s]) --> sub
print(a[22]) --> ---
--在构造函数的最后的","是可选的，可以方便以后的扩展。
a = {[1]="red", [2]="green", [3]="blue",}

-- (6)在构造函数中域分隔符逗号（","）可以用分号（";"）替代，通常我们使用分号用来分割不同类型的表元素
b = {x=10, y=45; "one", "two", "three"}
print(b[1]) -->one
print(b[2])  -->two
print(b.x) -->10

