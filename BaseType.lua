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


