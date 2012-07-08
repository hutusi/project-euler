#coding: utf-8

max_num = 10**999

first, second = 1, 1
seq = 2
fibonacci = 0

while fibonacci < max_num
	fibonacci = first + second
	first = second
	second = fibonacci
	seq += 1
end

puts seq
