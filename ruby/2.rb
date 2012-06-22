#coding: utf-8

sum,num = 0,1
x,y = 0,1

while num < 4_000_000
  sum += num if num % 2 == 0
  x = y
  y = num 
  num = x + y
end

puts sum
