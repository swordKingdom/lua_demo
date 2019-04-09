--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/4/9
-- Time: 15:26
-- To change this template use File | Settings | File Templates.
--

--[[
--1、基础类包括：nil、boolean、number、string、userdata、function、thread 和 table
--可以使用type函数获取对应变脸的类型，输出：
--string
--number
--function
--function
--boolean
--nil
--string
 ]]
print(type("Hello world"))
print(type(10.4*3))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
print(type(type(X)))

--[[
-- 2、类型转换：，Lua 会自动在 string 和 numbers 之间自动进行类型转换，当一个字符串使用算术操作符时，string 就会被转成数字。
 ]]
print("10" + 1) --> 11
print("10 + 1") --> 10 + 1

--[[
-- 3.变量赋值(同时给多个变量赋值)
-- ]]
--当变量个数和值的个数不一致时，Lua 会一直以变量个数为基础采取以下策略：
--a. 变量个数 > 值的个数 按变量个数补足 nil
--b. 变量个数 < 值的个数 多余的值会被忽略
a, b = 10, 2 --> a=10; b=2
print(a,b) -->10 2
a, b,c = 10, 2
print(a,b,c) -->10	2	nil
a, b = 10, 2,30
print(a,b) -->10 2


--[[
--3.局部变量：local，使用 local 创建一个局部变量，与全局变量不同，局部变量只在被声明的那个代码块内有效
--指一个控制结构内，一个函数体，或者一个 chunk（变量被声明的那个文件或者文本串）
-- ]]
--注意，如果在交互模式下上面的例子可能不能输出期望的结果，因为第二句 local i=1
--是一个完整的 chunk，在交互模式下执行完这一句后，Lua 将开始一个新的 chunk，这样
--第二句的 i 已经超出了他的有效范围。可以将这段代码放在 do..end（相当于 c/c++的{}）
--块中。
x = 10
local i = 1 -- local to the chunk
while i<=x do
    local x = i*2 -- local to the while body
    print(x) --> 2, 4, 6, 8, ...
    i = i + 1
end



--[[
-- 4.
--
--
-- ]]