local a="data"
print(a)
arr =  {d1="data1",k="data2"}
for k,v in pairs(arr) do
  print(k.."-"..v)
end

function sayhello(arg)
  local str= (arg.." hello")	
  return str
end

local result =  sayhello("Mr.Mike")
print(result)
